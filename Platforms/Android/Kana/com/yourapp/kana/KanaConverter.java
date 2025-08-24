package com.yourapp.kana;

import java.util.List;
import com.atilika.kuromoji.ipadic.Token;
import com.atilika.kuromoji.ipadic.Tokenizer;

public class KanaConverter {
    private static Tokenizer tokenizer;
    private static String userDictPath;

    // Set user dictionary using file path
    public static synchronized void setUserDictionary(String path) {
        userDictPath = (path == null || path.isEmpty()) ? null : path;
        rebuildTokenizer();
    }

    private static synchronized void rebuildTokenizer() {
        Tokenizer.Builder b = new Tokenizer.Builder();
        if (userDictPath != null) {
            try {
                b.userDictionary(userDictPath); // ファイルパス指定
            } catch (Exception ex) {
                System.out.println("UserDict load failed: " + ex);
            }
        }
        tokenizer = b.build();
    }


    private static Tokenizer ensureTokenizer() {
        if (tokenizer == null) rebuildTokenizer();
        return tokenizer;
    }

    public static String getReadingKatakana(String text) {
        try {
            System.out.println("DEBUG getReadingKatakana start: " + text);
            List<Token> tokens = ensureTokenizer().tokenize(text);
            StringBuilder sb = new StringBuilder();
            for (Token t : tokens) {
                System.out.println("DEBUG TOKEN Surface=" + t.getSurface() + ", Reading=" + t.getReading());
                sb.append(t.getReading());
            }
            return sb.toString();
        } catch (Exception e) {
            System.out.println("JAVA EX in getReadingKatakana: " + e);
            e.printStackTrace();
            return "JAVA_ERROR";
        }
    }
}
