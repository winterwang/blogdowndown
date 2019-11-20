---
title: Berksonian Bias
author: ''
date: '2019-02-09'
slug: berksonian-bias
categories:
  - diary
  - thoughts
tags:
  - 偶爾感慨
header:
  caption: ''
  image: 'berkson.gif'
  preview: yes
summary: "伯克森住院偏倚"
---


在幫別人做論文質量評價的時候，也是個自我學習的過程。在下不才，目前無償爲幾個雜誌做審稿的工作。

今天發來的稿件是某財大氣粗，曾經因爲篡改患者治療數據而臭名昭著的製藥公司員工寫的文章。那文章讀起來不長，卻實在是狗屎一堆。他們對歐洲高血壓患者中，直腸息肉的發生和直腸癌的發病率進行了數據庫分析。其中作者提到它們爲了避免[伯克森偏倚(Berksonian Bias)](http://influentialpoints.com/Training/berksons_bias.htm)，還對未執行直腸指檢篩查的高血壓患者的數據進行了分析。聽說高血壓患者中，直腸癌發病率也高（不知是真是假）。該文章在背景中大言不慚說別人的研究都搞不定到底是因爲治療高血壓的藥物導致了直腸癌，還是高血壓本身導致了直腸癌。我讀到這裏不禁已經覺得此文下半身應該已經涼涼。忍住不笑看完它們華麗麗地對每個risk factor單獨進行了一個回歸模型之後我的下巴已經掉了一半。心中暗想，他家就這水平還生產全世界最著名的高血壓藥物真的沒關係嗎？怪不得要去篡改患者的數據了。

在鄙人的觀察下，該論文估計是沒戲了，但是這個偏倚的類型卻是我這個流行病學博士僧未曾聽說過的。算是這篇屎一樣的論文中唯一的發光點。

原來這種偏倚最常見於樣本均採集自醫院樣本的病例對照研究。

如果我們使用均來自於醫院的樣本作爲病例對照研究的對象，那麼我們需要假設，我們研究A疾病患者被收治到醫院內的概率，不會被該疾病可能的 risk factor 影響。但是，這種前提很多時候是無法被滿足的。特別是當A疾病的 risk factor 本身是另一種疾病的時候。理由很簡單，一名同時患有兩種疾病的患者去醫院報道的概率，顯然是要高於只有一種疾病的患者的。

```
When we take the sample we have to assume that the chance of admission to hospital for the disease is not affected by the presence or absence of the risk factor for that disease. This may not be the case, especially if the risk factor is another disease. This is because people are more likely to be hospitalized if they have two diseases, rather than only one.
```

如本文開頭使用的圖片中所提示的那樣，Sacket (1979)^[Sackett, D.L. (1979). Bias in analytic research. Journal of Chronic Diseases 32, 51-63.] 當年從一般社區人羣中採集了2784名樣本進行調查，看這些研究對象中呼吸道系統疾病，和身體機能嚴重下降(locomotor disease)之間是否存在相關性。然後，他又對同一樣本中，過去半年內住院過的患者進行了相同的分析。結果顯示，如果只看住院的患者數據，作者會作出"患有呼吸道疾病，有較高概率導致身體機能嚴重下降。"這樣的結論。也就是兩種疾病之間存在相關性。但是如果看右半側全體社區人羣數據的話，兩種疾病之間並無顯著的關係。顯然後者才是正確的結論。前者之所以會推導出錯誤的結論，純粹是因爲同時患有兩種疾病的人，比起只有呼吸系統疾病，或者只有身體機能下降的患者有更高的概率**住院**。

回頭想起我們曾經做過那麼多院內病例對照研究，不禁感到細思極恐。。。。。。



