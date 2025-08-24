<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1755940676120" ID="ID_1756167835" MODIFIED="1755940682606" TEXT="minKai_history">
<node CREATED="1755940684833" ID="ID_1483777715" MODIFIED="1755940684833" POSITION="right" TEXT="">
<node CREATED="1755940685468" ID="ID_1265936410" MODIFIED="1755940689985" TEXT="minKai_history">
<node CREATED="1755990581563" ID="ID_1306456666" MODIFIED="1755991663944" TEXT="2025.08.24">
<node CREATED="1755990592131" ID="ID_1798458873" MODIFIED="1755990636820" TEXT="VoiceSearchViewModel&#x3078;&#x306e;EditCandidateItemPopup&#x547c;&#x3073;&#x51fa;&#x3057;&#x306e;&#x79fb;&#x690d;">
<node CREATED="1755990643387" ID="ID_1730535219" MODIFIED="1755990666188" TEXT="CandidateCategoryViewModelCandidateCategoryViewModel &#x306e;&#x4e2d;&#x3067; EditCandidateItemPopup &#x3092;&#x958b;&#x3044;&#x3066;&#x308b;&#x7b87;&#x6240;&#x3001; &#x305d;&#x308c;&#x306f;&#x76f4;&#x63a5; Popup &#x3092; new &#x3057;&#x3066;&#x8868;&#x793a;&#x3057;&#x3066;&#x308b;&#x3093;&#x3084;&#x306a;&#x304f;&#x3066;&#x3001;&#x30a4;&#x30d9;&#x30f3;&#x30c8;&#x30c7;&#x30ea;&#x30b2;&#x30fc;&#x30c8;&#x7d4c;&#x7531;&#x3067; Page &#x306b;&#x51e6;&#x7406;&#x3092;&#x6295;&#x3052;&#x3066;&#x308b;&#x3093;&#x3084;&#x3002;"/>
<node CREATED="1755990678417" ID="ID_411808926" MODIFIED="1755990679866" TEXT="&#x4ed5;&#x7d44;&#x307f;&#x306e;&#x6d41;&#x308c;">
<node CREATED="1755990688048" ID="ID_1658896626" MODIFIED="1755990688048" TEXT="ViewModel &#x5074;&#x306b;&#x30c7;&#x30ea;&#x30b2;&#x30fc;&#x30c8;&#x3092;&#x6301;&#x3063;&#x3066;&#x308b;">
<node CREATED="1755990699533" ID="ID_447459476" MODIFIED="1755990709223">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      public Func&lt;CandidateCategoryUiModel?, Task&gt; ShowPopupRequested { get; set; }
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1755990719358" ID="ID_617979800" MODIFIED="1755990739319" TEXT="ViewModel &#x306e;&#x51e6;&#x7406;&#x304b;&#x3089;&#x30a4;&#x30d9;&#x30f3;&#x30c8;&#x767a;&#x706b;">
<node CREATED="1755990728390" MODIFIED="1755990728390" TEXT="ShowPopupRequested?.Invoke(category);"/>
</node>
<node CREATED="1755990736732" ID="ID_1591100524" MODIFIED="1755990737716" TEXT="Page &#x5074;&#x3067;&#x30c7;&#x30ea;&#x30b2;&#x30fc;&#x30c8;&#x306b;&#x51e6;&#x7406;&#x3092;&#x767b;&#x9332;&#x3057;&#x3066;&#x308b;">
<node CREATED="1755990748041" ID="ID_1156672699" MODIFIED="1755990755559">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      viewModel.ShowPopupRequested = async category =&gt;
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;var popupVm = new EditCandidateItemPopupViewModel(...);
    </p>
    <p>
      &#160;&#160;&#160;&#160;var popupPage = new EditCandidateItemPopup(popupVm);
    </p>
    <p>
      &#160;&#160;&#160;&#160;await Navigation.PushModalAsync(popupPage);
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1755990775964" MODIFIED="1755990775964" TEXT="Page &#x304c;&#x300c;ShowPopupRequested &#x306b;&#x3053;&#x3046;&#x3044;&#x3046;&#x51e6;&#x7406;&#x3057;&#x3066;&#x306a;&#x300d;&#x3063;&#x3066;&#x767b;&#x9332;&#x3057;&#x3066;&#x308b;&#x3002;"/>
<node CREATED="1755990775964" MODIFIED="1755990775964" TEXT="&#x3060;&#x304b;&#x3089; ViewModel &#x304b;&#x3089; Invoke &#x3055;&#x308c;&#x305f;&#x3089;&#x3001;Page &#x304c; Popup &#x3092;&#x958b;&#x304f;&#x3002;"/>
</node>
</node>
<node CREATED="1755990792370" ID="ID_111417622" MODIFIED="1755990793085" TEXT="&#x3064;&#x307e;&#x308a;">
<node CREATED="1755990805348" ID="ID_1366196879" MODIFIED="1755990810772">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p data-start="900" data-end="1016">
      <code data-start="900" data-end="938">ShowPopupRequested.Invoke(category);</code>&#160;&#12399;<br data-start="940" data-end="943" /><strong data-start="943" data-end="959">&#12300;&#12452;&#12505;&#12531;&#12488;&#12434;&#25237;&#12370;&#12427;&#12384;&#12369;&#12301;</strong>&#12290;<br data-start="960" data-end="963" />&#23455;&#38555;&#12395; <code data-start="967" data-end="991">EditCandidateItemPopup</code>&#160;&#12434;&#38283;&#12356;&#12390;&#12427;&#12398;&#12399; <strong data-start="1000" data-end="1010">Page &#20596;</strong>&#12398;&#20966;&#29702;&#12290;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1755990805348" ID="ID_1417250895" MODIFIED="1755990850554">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p data-start="1023" data-end="1104">
      &#12376;&#12421;&#12435;&#12385;&#12419;&#12435;&#12398; <code data-start="1034" data-end="1056">VoiceSearchViewModel</code>&#160; &#12363;&#12425; <code data-start="1060" data-end="1083">EditCategoryPopupPage</code>&#160;&#12434;&#38283;&#12365;&#12383;&#12356;&#12394;&#12425;&#12289;&#21516;&#12376;&#26041;&#24335;&#12395;&#12377;&#12427;&#12394;&#12425;&#65306;
    </p>
    <ul data-start="1106" data-end="1332">
      <li data-start="1106" data-end="1218">
        <p data-start="1108" data-end="1218">
          <code data-start="1108" data-end="1130">VoiceSearchViewModel</code>&#160;&#12395; <code data-start="1133" data-end="1212">public Func&lt;CandidateCategoryUiModel?, Task&gt; ShowPopupRequested { get; set; }</code>&#160;&#12434;&#36275;&#12377;
        </p>
      </li>
      <li data-start="1219" data-end="1267">
        <p data-start="1221" data-end="1267">
          Page &#20596;&#65288;VoiceSearchPage&#12392;&#12363;&#65311;&#65289;&#12391;&#12300;Popup&#12434;&#38283;&#12367;&#20966;&#29702;&#12301;&#12434;&#30331;&#37682;&#12377;&#12427;
        </p>
      </li>
      <li data-start="1268" data-end="1332">
        <p data-start="1270" data-end="1332">
          ViewModel &#12363;&#12425;&#12399; <code data-start="1284" data-end="1325">ShowPopupRequested?.Invoke(newUiModel);</code>&#160; &#12391;&#25237;&#12370;&#12427;
        </p>
      </li>
    </ul>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</node>
</node>
</node>
</map>
