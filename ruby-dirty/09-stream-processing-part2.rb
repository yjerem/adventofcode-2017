level = 0
escape = false
garbage = false
score = 0
num_garbage = 0
DATA.read.chars.each do |c|
  if escape
    escape = false
    next
  end

  if c == ?!
    escape = true
    next
  end

  if garbage
    if c == ?>
      garbage = false
    else
      num_garbage += 1
    end
    next
  end

  if c == ?<
    garbage = true
  end

  if c == ?{
    level += 1
  elsif c == ?}
    score += level
    level -= 1
  end
end

p num_garbage

__END__
{{{{{{{<o!!u!"<!>},<,!>},<!e!<!,e>,{<!!i,!!}!>,<o!!ue!!!>!!eo>}},{}},{<'u}!>},<i!}!!!!uu!!!>>}},{{<!>},<}!!}<<'u!{!!i!!"!>},<!!!!!!!!!!!>,<>},{{{{<{!>!>!!!!!!e!!!>},<o<!>o!>,<a!!!>!!!!!>,<i!!!!!>},<!!a">},{<'e!>!>!>,<o{{!>!>},<!{<>}},{{<"i{!!!>!>,<>},{<!aa!>,<'{}i!>,<<<ue'>}}},{<"e'!>>,{<!!!>},<ee!>,{a>}},{<o!>,<!!!>i!!o{!>},<!>!!<!!<<>,{<!!!!>}}}}},{{{<!!a!!o}!u<!!!!!>!'<,e!!"!!i!!i!!a<>}},{},{{<ae!>!!!>!>o<}!>},<!!!!!>,<!e!"!!"!>>},{},{{<!!o!!!"!e<a!!!>,<}'"!>,<!>>},{}}}},{{{<!>},<<u!>"'">,<<,o!!o>},{<i!>,<!!!>!>,<!>,<ueii!>},<ui!!}>,{}}},{{{{<'!!!!!!!>{a>},{<!!!>'aee",u,'!!!>!>,<!{!!!>"!>},<>}},{<ei!!!>!!!>!>'!>!>},<!>,<!>},<{>,<>}},{{{}}}},{{{}}}}},{{{{{<!>},<!!"!>,<<e}<<u!!!>},<ai>},{<!!u"!>,<u!>},<!!!>!!!>!!!>!<!!!>{!>,<!!!>,<!!<>,<!!!!}!>,<!!o!e!'!u!>'e!!!!!{{!!"!!!>},<<ai>},{<!!,"}!>,<!!u}}!>},<e!>},<{!'!>},<>,<u}!>ua,{!!{{iai"!>},<!>,<!>,<i'u>}},{{<!>,<a!!o,,!!!>!!!!!>u!>},<'a!>},<o{!!'a>,<!!e!e!!ou{u!!!>,!>!>!>},<i!!!o>},{{<,!!!>},<!!!!!>!>{i!"!>!!!!<>,<!!"!>!!!>!!!!!>},<"'>},<a!i,'}!>,<}u!!o!>,<"!>'>},{{{}},{{<!>},<!>},<!!!>'!!!!}a<'>}}}},{{{{{}},{{}}},{{{}},{{{<'ai<>},<{!!!>!>,<!!{u{,i"<<!>},<!!!>i!!{>},{<!>,<!!!>},<{e!>!!'}!>,<!i,}eo>}}}},{<>,<!a>},{}}},{{},{<!>,<!!!!!!!!!>!!a}ei!{>,{<!!!!!",>}},{{{<"!!!!!>o!!}!!!,eo,!,e,}ae!,'>,{{<}ii!>},<!!"!>!>eaoi!!e>},{{<o,!!<u!>,<e!!,<!>},<!!!eue>}}}},{<oo,"i>},{<}i!>!!!>ou{!!!>!!{,}a!>"o,!!o>}}}},{{},{{<!!!>},<!>},<"!>},<i"!!a"!!"!!aea>},{{}}}},{{<<'"euu!'!>,<>,{}},{<!>,<o<'"}e!>},<!!oia!!!>eu!!!>a>},{{},{<<o!!!!!!!!!!i,<!!"!!,!!!!!}e<!!!>},<>,{<i{!!!>>,{{<!>,<i,e!!!>"a!!!!}ei<>},{<"u'!>},<{,u!>,<!!!>{<!!u<ua,>}}}}}}}},{{{{},{{{<"'!!!>,!'!!!>i}'!!!>,!!!!!!!>"'!!!>>},{}}},{{<!>!>,<!!!>!>,<>},{}}},{{{{{{}}},<}>},{{<!>,<!}u!!!>!u<!>},<!>},<!!!!<}{}<e!>,<i!!!!!>>},{<!u!>},<!>},<!!!>>}}},{{{<!>,<!>,<a!!i!,{ie!!ea!''<>},<i}e!!'!,!!!>!}>},<"!>,<o!!!>!!!>e}!>,<}>},{}},{{{<'a'!>,<e!>,<!!!>,<>}},{{{<>}}},{{<!!!>},<e}!!'"a}>},{<u!!a"u!!<>}}},{}},{{},{}},{{{},{{{{<>}},{<!!!!'!'"!<{{a<o>}},{{{<!<{{u}{!>},<u!>'!>,<!'!>},<"!!!>!!!>o>,<!!a}!!!ea!uae!!!>>},{<!e{!!">}}},{{<"e!>,<e!>},<!!!>!!,e}!!!>!!a"!>,<!!!!}}ei>},<">}},{{{{<,!!!>a!}!!}i!!!!!>}}!<!>>},<!!}!!,{!!o{!e'ee}uio>},<!!!>!!o{>}}}},{{{{<!>,<ao!>},<!>{e>},<}o<''e!>,<!>},<{>},{{{<e"!<'!!!!!>},<!><!!!><"!>,<!!!>>}},<",!,!',a,a>},{<<!>"e'!>u<>,{<i!!!>',!!o!!!!!!e>}}},{{{{<'{!!!!{o<>},<!>},<'"i!>},<e"!>,<"!!!>,!'!!!>,<"!!!>>},{<!>"eo!!'{!!!>!>a!!>,<!>,<u>},{{<u!'!!!>!"!!!>!>!!!!!>!{!>},<}!!!!!>"!!!>},{uu>,{{<!<e<!!}>,{{<a'>}}},{<!!<o!>},<!!!>!u'>}}}}},{{{<!!>,{<!!!!!>!!,a!!!<!!!>},<uao"!!!!!>u!!>}},{{<!!e!"e,u!!i!!!>,<!>!>},<!>},<>}}}},{{},{{{},{{}}},{{{{<a!!!><e>}}},{<!!!>i!!o!>},<<!!!>>,<i!!!>'i,!}>},{<eo!'!!,<!!!>!!!>>}},{{<oao!!e>},{<{u!!!>"ui'i}{!>a{!!a!>},<!!eae!>>}}},{<e!!!>e{""!!i!>,<u!>},<!>u!>,<!!"!!!e>}}},{{{{{<o!>},<<!>!!oo!!{!!e>},{{<!>"!!!>,<'}"!>,<o"'u!!!{>},<uii>}},{{}}},{{{}},{{<"!!!>'!i}!>},<!!!!!>,<{o!!!>i{!!!!!>},<!!o!!>}}},{{},{{<{u>,<!'"!!!>'!>,<!>a!!'o>},{<"',>}}}},{{<!>,<a!!!o!!!!'oa!!!!!!<!!!>!!!>u!"i}>},{{<u!!!>},<}!e,>}},{{}}},{{{}}}},{}}},{{{{},{<eu!}!!"ua!>,<u!!!>!!!>,{!>,<'<"i!!!!!>>},{<!!'!>>,{}}},{<!>{!>>,<'!>,<oa!!{!!!!e"{!!>}},{{{<>,{}},{<!uu!!!>!>'e!>!!a!!a{>},{{{<!>},<!!<!>,<!>},<{!>,<o"<iu!>e"!!{>},{{<!>},<!!,>},<!!i!!"!!!>}{oae!!>}},{{<!>o!!!>},<!!{>,<!o{ua!>},<a!!!>!>},<{!!o'a!>,<i>},{<}a!>!!i!!!>,<">}},{{<i,!>},<!>"'i>}}}},{{{{<aa!>},<!>,<!!!>iiu'!>,<{!>,<!!!>!!'!'>}},{<<}!!!{!>!!<""<>,{{<!!o>}}}},{{},{{{{},<uo">}}},{<{",!!!>!>!>},<!!!!!!a!!!>,<!>,<<>}},{}},{{{},{{<"}!i!"!<e,u!>},<!!e"}!>'!!e,!>},<a>}}},{<!!!>{"!!!>"!!o!>},<!!!>!!!>e!!i",,>,{<!!!>,<u''"{i,!!!!u!i>}}}}},{{{{}},{<!>},<!>},<!>},<}!>,<!!!!!>>,<!!aa!>'aaoe!!'i<!!>},{{{{},<>}},{}}},{{{<{,!!!!!>,<!ii!!"!>,<"u,u!>},<>,{{{<!!}u"'!',>,{}},<,{'!>!{au!!>},{{<>}}}},{}}},{{},{{{<i>,{{<>},{<!!<u!>},<{o!>a<!uai>}}},{<i!>,<!!u'e'!>,<!<!!!>{'!>},<ai>,{{<!iiao>}}},{<a!!!>,<"uu!!!>'!!!>a!"!!<,!,uu>}},{<,>,{<!!!>!!!>!!!>aii,,e!!!!i!!!!!>!!},>}},{{{}}}},{<!!!>"i'!>},<!>,<!>,<ai!>"e>,{{},<!!i<!!a,!!''>}}},{{{}},{{<o}o!!}!'i>,{<oa!>},<o!>},<!>},<!!e!>},<o,}u'!!eu!>},<'!>o>}},{{<a!'}!>,<!<'a!>},<e!!io!!!>,<!>!>,<,>},{<!}e!!!>{eae<>}}},{{{<u!'iue">},{<o<!!ai!>'!>,<e'uu!>},<!,<!!!>!!!>!}>}},{{<!!!!{o>,<!o!!!!>},{},{<!!o!,>,{{{<!>},<!!!>},<!>"!!!>o"!!<oe}>},<!!e>}}}},{<a!!!!!!!i'!!}{!!!>!,!!!>!!!>{<!><'iu!>,<>}}}}},{{{{{<u,!!'u!!!>i!!!>'!>},<oo>}},{<!!u!>},<!!'"!!!>!a'>},{{<!i!u}"!!,!!!><!!!!!>},<!!,!o,o>,<>}}},{{{{<<!!!>,<}!>},<!>!!!>,{u!>>}},{<!e'!!!><!!o!!!e}ui{i"{e!!!>{>,{}},{{<!a"a<!>!!!>ou<!!}a}>}}},{{{},{{{<!!'!>},<>}}}},{{{},{{<!>"!!!>}u!>a!>},<{{iu>}},{{},{<a!!!>>}}},{{{{<!!!>>},<!>!'!!<i!>!!,},!eoee!>,<,a!>!>'>},<!!i!>o>},{<>,<!>},<a}!!'!>>},{<!>i<>,{<'!eua}{e!"!,!>,<}i!!{<u">}}}},{{<'!!}}!!!>{'!<a>}}},{{{{}},{{<!!<a,!!ui!!!>>},<!!!>!!!!i<!!!>!>!!!!!>!>,<!!"!>},<a!>},<!!i!>,<!!!!!!iu>}},{},{{<o!!io"!,a"!<aa'i!!u>}}},{{{<uiiai!>},<!!!>o>,<'o!>,<auo!><!!"{>},{{}}},{},{{{<ou!>,<eo>},<!>!!!<!!!'!>,<e,>},{{<!'!!!>},<"!}a!!>},<!!a!!"!!!{!!!!u<o!>},<!oa>},{}},{{{<!u<}'}>}}}}},{{{{{<!>!>,<!!>},<<!!<!<!!!>!!!>!!i!>},<o!!,!>},<}<e>},{{{<!!oa,,e!ee!!!><u"!!>},{<>}}},{{<!!!>,,!>,e>},{<}!>u}">}}},{{<i!>,<""!}e!!{!>},<!!u,i!>,<{!>,<!>,<,,u>,<!!}!>},<a!o!!!!!>!}{"!!!>,!,i>},{{{{<<,!!!'a<}!!!>!!!>},<!>,i"!>!!}<!!!!!o>}}},{{<!>,<}ae''aa!>},<!!!>,!!e!>},<!!!>,<o>,<!!u{ua,,}u>},{{<<i}{,!!!!!!!><i>},{<}!>,<ua!>,<'a!>!!u>}},{<"e!>,<u!>,<!!"!>,<!>},<}>}},{}},{<!>,<!!>,<!!'!!!>!!"'}!!!>!'!>},<!!a!>},<!>},<"<o!,>}},{<!>},<!!!>u"!!u!'!!e!!o!!,!>},<>,{<'!!!>!!!>!!,{i{!!!!i"!!<i>}}},{<!>ae!!!>,<!>u"{ioa!!!>},<i>,<u{>},{<!!!>">,{<!!u!!!!!a!'!>,<!!!>!>},<!>o'!!,{!!<iu'}!'<>}}},{{<e!>},<!a">,{}},{{{{}},{<!!o!eo!!!!!>},<i<!>},<'i!o!!!>u!>},<u>,{<>}},{}},{<eio!!u!!<!>},<>,<!>,<!!!>ai}e!!!>'<>},{<},a!'!!!>}!!,!!e!!,!>,<a'>,<<i>}}}},{{{{<'!>e!!!>},<au!>},<,>},<!!!>!ie!!!>"{>},{{{},{<!!'e!>},<uuu>}}},{{<{!>!!!>!>!!!!"o!!!>u,!!!!!>{,!>},<!>},<!>},<'>},{<"!!<!u}''>}}},{{{<!!<!'!>au}ioia{!!o!o'!>,<!>},<!e>}},{},{<{>,<e'"!!!>!'!>,<!>},<!!!>,<{!!<>}},{{<}i"<{u<!<!>,<oo>},{<!!!>'!,!<!!}!>!o!>},<>}},{{{{{},<eu{!!u!<e'!o{u<i'>}},{}},{<{a!>},<>,{}},{<!>},<!ou"!"i!!''!>{u>,<<{uie!>u!!!>},<!!!>o}>}}},{{{{<o<!!{!>!>,<"!!!>},<'!!{!!u>},{{<!>,<e,{u!!!!!!!,i{!!!>e!ea{!!!!!!a!!!>{>}},{<!!"!!!>!!'"e!!e'!iee<aiu!!i!!>,{<>}}}},{{{<,}i!>,<!!u!!!>!!!><!!!>!>},<!!a!>!!a>,{<{e!!'!>,<'o!!!>}e!!a>,{}}},<>},{{<"!!!>!!a!>},<,>},<ao<!!!>a"<!!!><!>,<!!!!!>,<!>,<<!!!>},<!>,<<>}},{{{{{<!!!>!!uu!>!>},<}!!!>!>aa!!<>}},{{{<}!!!>!!!}!!!>,,!!!u!!!>,<!!!>!!}!>!!!!e>}},{}},{{<a!>,<!!!!!>,<!>},<!!!>},<!>},<!"a"'ue!!!>"{!!{>},<!!!>,!>,<<o<>}},{<u!!!>!{,,<o!>,<a!>i!a!!!>,<i>}}}},{{{{{{},{}},{{<o}'!>},<!<eo''!>,<aa>},{<eo!>},<{ai!!!!!>,<oie!>,<'!!!>"!!<i!!!>>}},{{}}},{{<{u"!>},<!!,},a{'!!!!i!!u>},{{<"!!!>i!!!>o!!!>>},{<,!>},<i!>,<i,!!!>>,{}}},{<ai!!!!!!a!!!!o,a>,{{{},<{u>},<"{!!a!!!a!>,<!!!>,<!!o,>}}},{{{{{{<o<!a!!'!!!!'>}},<!!!>'aoa>},<e!>,<!!u>},{},{<u!!,}!,{!>},<<!>,<!u!!e!i!!!>,<"'{>,{<!!!!,!!!>},<u!>!>},<{o!!'!'!>},<",e{,>}}},{{{<!>},<!o!!!}!,!>},<{,!!!>a<!{!!!>!a>}},{<ie!!!!!}o"u<!>!a!>},<<{u!!!>}!!!>{!!!>!!a>}},{<a{i}!>{o}a!>},<">,{<!>!'!!!>,<!>,<!>},<e!>!>},<!>,<!>!!!>{o!>},<u>}}},{{{{<!>!!!!!>{!>},<"<!!>},{<!<!>},<!!<'}!>},<}>}},{{<!>,!!!>!>a!>,<!!e!>,<""!!i!!u!!!>!!!>}!!!!{>},{<aoi"!>},<!>,<!>!!!>!o}!!!!!!!>},<i!i>,{<e!!!>!>,<,!!!>!!!uaaa>}}},{{{<!!!>!e!!!>io!>},<'!!'ai!>,<!!>},<!!!,ae!ei!>},<a!>!!!!o'!!!>{u!"!>,<u}>},{{<o'!>!!!>!!o!!!!!!!>!>,<i>},{<a!>},<!>},<}"oa!>,<u{!>,<!!!>,<">}},{{<'i!>''!!"!!{!!!>"<u!>},<e'>,{{<e>}}}}}},{{<!!e!'!!!>e,'>}},{{{<!>,<!>},<}!!!!!>o!>>},{<!o!>,<!!e!!!>>,{}}},{},{<ii,i!!!><{!>,<'a}!!<!!!>>}}}},{{{},{{<!!o,"!!!!!>>},{{{<i<!>,<}!!u>},{<!!a!!'u!>,<!>,<!>},<o}u!>},<>}}}},{<i{i!>,<!>},<!>uo'>,<'!}au{!!!!!!u,!e!>,!>},<!o!!!>!!o!>!!!>!>,<o!>,<>}},{{<!!!>a'!'!>},<<}e,a!!!>"!!!>e!!i!}>},{{{<!!u}{>,<!!!>!>},<eu!!">}},<'!u',!>},<u!!<a>},{{{<>}}}},{{{{<{}!!'!!!>!!!>!>"u}!>},<',!>!{!a>,{{},{}}},{<},!!}!!{<!>{}<!!>}},{<!}e}!!>,<!!!>!>},<e,{'!!!}ia}u">},{{}}},{{{{}},{<>}},{<}!!!>ao!!!!e<uo>,{{},{<!!{aoi"i!!{!!<!!!>,<e>,{<"oa<u>}}}}},{{{<{!>,<!e!!"}!!!>!!!>,<o',>},{{<>,<!!<,o}!!!>!'{a<{!!!>>}}},{{{{<!>},<i!!!>},<,euo'oi>},<aua!!a!>!a!>},<!!io!!}{!>},<>}}},{{},{<<!!!!!>i,u<'",!>,<'"!'!!!!u>}}},{{{<>},<!!"!!!><'>},{<a!!a}!>},<,>,{<u!!!>,,u}u>}},{}}},{{{<'!!<>}},{{{},{<>,<{{!>,<{}!!!o"uu!>},<a!u!>{,<!>},<<>}}},{{{<",!aaio!!o!!'!>!>,<i>},<!">},{<eua>,{{<!>,<i'uu!!!>"!>},<!!io,a<!!!!!o>}}}}}}},{},{{{<!a!><!>oa>},{{<>},<!!!!{e!!"u'>}}},{{{}},{}}},{{{{},{<<ee!'!>,<!!!!e!>,<e!>},<!>},<!>!!}!!!>"u>}},{},{{{},{{<!u!!!>e!!!>"a"o!>"i>}}},{}}},{{<!!uei!>},<!!!>!>},<i!o,!>!>,<'<>},{<!>},<u!!!>!>,<!!!!e!>,<!!!>o!>!!"!!{au}!,,>},{<!>},<'!><uu!>},<}o!!!!!>!!!>,<''au!>,<!>>,{<e!!e!!<i!>},<!>'<!!"}a'!!!>},<>}}},{{{<!i!!!><!!!>},<,!!!u!!<,!!<!}!!}}!>},<'}">,{<!>,<{!!i,>}},{{<!>},<!!!>!>,<oao}!!!}}!!!>!>,<>},{{{<!e!}o!"i!e!>},<"!!!>o}!!e!>,<!>!}ia>}}},{{}}},{<!!'ee}oo<<{!>},!!}e!!o>,<,!e>}},{{{{<!>,<}io<i"{}}a}<>}}},{<>}}},{{{},{},{<}i!!!>,<u!!!>!ou!!!>!>,<i!!<!!{>,{}}},{{{},{<!!e!"!>>,{}},{{<!!!>u!!!>!>',>},<!!!>,<!!u"<!!!'<}a!>},<'"i!!!>},<!>},<a!>},<!!>}},{<}u{i{o'"ei!<{ea!aa!!!!!>},<!!a>,{<'!>!>!>},<!!<e!!!>>,<!>o!>},<!>},<a,!>'!>},<!!a!!}a"'!!!!!!a!!,>}}},{{{<!!'!>,<"{>},{}},{{}}}}}},{{{{<u!>!!,o""ai!>oe>,{<u!'uu!!!>>}}},{{{{}},{<!!!!!{ua{!!}'"!o{!>},<e"!>},<>},{{<!!!>!>u"!>e!>,<a!!!!!>!!!>iu!ue"u!!<>},<}!!!>,<'ou!!"i,!!<>}},{{<{!>,<'<<!!'!>!!!>!!!>!o"!!!>,!!!>>,<>},<o!>},<a!!!>!ee',!>,<{>}},{{<aa!uo},!!au!!!}!!!!"!!ieo!!!>>,{<}!!u!>,<!!!!'u",>}},{{{{<!!!!!>ooe>}},{<!aa!>!!u!>,<!>},<!!o'u!>,<!>,<!>},<"e',>}},{{<!!i>}}},{<!!}!!,!>},<!!'!!!>!!!>{!!!>!"!>,<,<!>,<,o<i>,<!>!'<>}},{{<!!!>i!>,<}>,<o!!,!!"<<,,!!!!ee!!}ii{{o>},{{<!>},<'!>,<}!>},<a"!!!>e{!o!"!>},<!!!>!<}!!<>,{<"eui!!!>,>}}},{{},{{<!>,<!>">,<!>,<!>iie'{!!!>{e!!!!,>},{{},{}},{<!!o<ao>,{}}}}}},{{{},{<>,{<{!!!>iu!io<ou,'eo!!u'!>},<>}}},{{{{<!>'!>!!!e!!!>},<e!>{>},<>},{{<!!!>!!!>},<{,oi>},{{<}}!!'u!>},<}i{!>!>"i}{!>,<!!!ao'}>}}},{{{<!i!!!>!!">}},{{},{{<{uie<"!,!>},<}!!!>"<i>,<ueo!!!>},<'!>!!!>},<io!!"o{!<!>},<!!!ui'i>}}}}},{{{{},{}},{{{}},{}},{{{<!>},<"!!oe{!!"!!!>a!!o>,<!>},<!e}'>},{<}}!>"!>},<a<e'a,}!!u!>>}},{<,!!'!!!!!!e!'!>},<!>!!>}}},{}},{{},{{}}},{{},{<!>u,o!i!!!>!>,<>},{{<!!!>},<u!>,<!>,<>,{<{e!>!>,<!!!>u"<!>,<>}},{<oei!>},<o!a>,<',!!!'o!>},<!!!}}"!!!>,<!>!>},<<!i>},{{<oa!>!!}",!o!!!>a'!!!><'!o!!i>,<>}}}}},{{},{{<ia!>},<"},!>},<a!!!>>}},{{{<ao>,{<e<'!>},<{,{!!!>>}},{{}}},<!>!>,!i!!!!!a,!i!!!!i!<!>u!!!>'>}},{{{{<<,{e}!>},<!!!>a<!'"!}}>}}},{{<!o!!!>,<!!!>}!>!}a>},{}},{{<>,<!>a>},{{{<!>,<u!>,<o<"!!!>>}}}}}}},{{{{{}}},{{{{<'o!!!>!>!!!!!>u,"!!o>,{<'!>,<!!'!!!>,<!!!{!<!>o>}},{{{<i!>,<!!!>e!!',!!!>,<e"!!!!{!!!!!}}!!!!!>!>,<">},<e!!u!>,<{'a}!!!"{!>,<!!!>{u<!!!!'>},<!!!!!>a!!!!iu!>!!{!!{!>},<!>},<a!>>},{{{{<'!>}<!>,<ea{o!>,<>}}},{{<!i!!!a{!'!!!>}!!!>u!!i'ou!>,<ae"!!!>>},{{<{!>},<!>},<{e!!<'o,,a!>},<>},{<"'<'!!!!!>,<!>'!!!{,,}"o!>},<>}},{{{{}}},{{}},{<!>},<'}e!}!>,<!!<'"!>{e!>},<"!!!>>}}},{<">,<'o'!!e>}}},{{{<!!!>>},{<"<!''!>},<a!!!>>}},{<a!>,<!{!!!!!>aei!o"!!!!!!!>'!"!>},<u,a>,{<a>}}}},{{{{<oe,'!>,<u>},{{},{}}},{{{<>},{<!!!>"!!!>},<{'!!u,ui>}},{{<"i!!!!'!!i!>,<!>},<!>iau,'!i>}}}},{{{{{<a!!!>,<!>!!a"!!!>,>}},<"<!>},<}!!!>e'!!!>!>},<<>},{}},{{{<<e}!!e!!eii!!a!>},<ua!"{>,{{<>}}},{<!>,<!>}!"!!!>>}}}},{{<}!}!e!!eaioa}!o<!!!,''<!!i>}}},{{{{{<!>!!!>!{}!!,,"ua!!!><!>,<ia{'a>},{{},<"!,,"!>o!!{a{}{!>},<u!>!><u!!!!>},{<e!!"o!>oi!!!>!a<{oi!o!>,<!!!'o>}},{{{<i!!>},<a!>!>{>},{{{<u!!a<}">}},<''{a!>},<u!>},<!{!>,<u>},{<!!{!>!!!>"a<!!!>,<{{}}a!>!!a!>},<>}},{<>,{}}},{{<!!!>!e!a!e!!!>!a>},{<{!!,a!'!a!!o!>>,<}u,>},{<i!!}'!>,<{,!i{!>},<<"!!<e!!ouu>,<}<!!>}},{{{{<,}!!!au!!!>!!!>i!e,!!!>!!!>uu">},{{<{''>},{<"e"'!!!!"!'!!i!!e!!!>!>,"{'!>},<i>}}},{<{!>"}u{!>,<{aee!>},<!>{'i"!!a!>},<>}},{<!u'oe,e}',e!}<}!!o!i>,<,',ia!>},<!>!!!>},<}<!>,<!!!!'o>},{}},{}},{{{{{}},{<!>,<o{<!!!>},<!>},<!"!>},<u!!o!a!>,<!!{,i>},{}},{{{{}}},{<!!eu!!"!>},<!!u!>,<i!>},<>,{<i!!ua<,!!!>>}},{}}},{{{{<o'{!!<}a!>,<!!a!!ao'i!>u'!!o>},{<,!!i,'}}<{"!>!>},<>}},{{<!!!!{!!!!!!!>},<oi"!>,<!!!>!>,<!a">,{<!!u!!!!!!!!{>}},{{{{{<i!>},<"!!{!>},<u!!'!>,<u<!!'!!!!u!>},>}},<!!'aie{o""}!!!>e'>},{<,o"<i!>,<!!!>!a!!o!!!>!!!'a{!>},<,>,{<"!!!>o!>,<oa!>,!!!>}}"!>!i>}}}},{{{{},<u!!!>}<e!!!>}!>},<!!<a">}},<e!!>}},{<!>!!i,i!!!>!e'!'!>},<!!!>}!>,,u!!!>},<>,{<>}}},{{{<!!oea!!!>!!a!>}>},{}}},{{{},<!!!!}!!i{!>},<!>!!!!{!!!!!!!u!>},<"e!!!>,<{"<!>},<!>},<>},{},{{},{}}}}},{{{},{{<<eu!>!>,<}'u!!!!!!>,{<{,i>,<o!!o,u!>,<i}>}},{<"!!!><!}u!!o!>},<>}},{<">,{<iua>}}},{{{<!!u!!,,}"}!!}u">,{{}}},{{<>},{<!>>}}},{<!!{"!>},<a!{!}u!>},<'"!!!>},<!>>,{}},{<!!!a>,{}}}},{{{},{}},{{<!>,<!>,<!!!>o!!!'u{!!!>}!!!>}a>,{<'a,a<a}{{{>}},{{{<ii!>,<"!>},<!oi"'a!!<!>,<u!><>},{}}}},{{}}}},{{},{{{<!!!>,!>,<!!"i!!!>!>},<!>{!'>,<!!!>a!}!!!!"!!!>'!i}ua,!!!>!!!!!>>},{<i!>!!!>e!!!>,<i,{u!!iu"!!{}!>},<e>},{{{},{{<!>},<"!!!>!!!>,<"!>ueu!!!>!u},>}}},{<,!>>}}},{{{<aa"!!uoo!>'}!!!>!>a>},<oi!>,<a}<u!!!!{ii!>,<!!!!io>},{<e!!!>'>,{<!!!>uu'u!>},<!{a"!>},<e!!!><i'>}}}}},{{{},{{<i!>,<>,<!>,<>},<!!,u{ee!>,<e!!!>!>{>}},{},{{{}}},{{<!>},<}!!!>,<!!!!!>!>,<,!i<{!!!>!!!>o!'!>,<!!a,!!!>,<>,<!!!>}!!!>e!>},<!!!>!!!>!>,<!o{!<!oi{,u!>,<!!'>},{{<!,"!!}"oiuao,!>},<!a!!a!>,<<u,e>},{<!}>}}}}},{{{{{<"i!>},<!!{!>,<!>},<a!!!>!>},<o!>,<!!e,}i"!>,<'>},{}},{{<,}!>},<ui!>},<>},{<<a!u,"}ua!>,<>}}},{{{}}},{{<{u'!>},<a!!a!!!!!>!>!!oa"u>,{}},{},{{<!>!!<{!!!>o!>i>}}}},{{}}}},{{{{<!!!>,<}!>,<<!>},<!u"!"!>,<u>},<<io{i'i!!u!>},<"!!>},{},{{<!!!!!>},<''ii!!"ioe!>},<!!!>!>},<i>}}},{{{<!!!>>},{<!>,<u{!oio!>},<iu!!!>>},{{<<>},<!!}'!}<!><!>,<<i!!>}},{{{{{<!!!!!!!!u<'!!!!!>">}},{<!!'{,,!>,e!a!!"{!!!>,<{'!!<>}},{<i!>,<'u!!!>},<},!!!>}!>i!>o>}}},{{},{{{{<!>,<,!!,!>,<o,!!!!!!!!""!>,<}"o!!,}io!!!!!>,!>,<>}}},{<e"''{!>!>e,!>,<>}}}},{{{<oi<!>ua!!i{!u">},{<!>,<,iaoiao!>,<!!,!>},<>,{}}},{{{{{<}}!>},<<ueu!!!>,<!!!>{i'uu!>},<!>,>},{<}>}},{<oo<!>a"!>,<!!!>},<>}}}}},{}},{{{{{{<!}u>}},{<!!!>!}!{e}"i!!!>,<'!'i!!'!>,i}}u>}},{{{<,!>>,{}},{{{{}}}}}}},{{{<!>!!!>!}",>},{}}},{{<}!!e!>,<>,{<,i'}!>,<!!!u!!o>}},{{},{}},{{<<>,{}},<!>},<!>,!>!!"}o!!u>}}},{{{{{},<}!!!!!!>},{{<!!!>'!!a!>,<!!,!>,<e!>,<a<",e<">}},{{<!!'ei<!u">},<>}},{},{{{{<""'>}},{{{{},{<<!!"!>!!!!!>!!e!!ui!>},<!!!a>}},{<i!>>}},{<<>,{<u<!!"!>i!!',,{">,<o!>!>,<eou<a',!!!>i!u!!<!!u!!}a>}}}},{{{<!>},<!!!!!>",!!,>},<!'!>!!!a<>}},{{{<au}!>!!!>>}},{<!!!>ue',{e"<!!!!>,<!}!!!>a!e"<}oa<>},{<{'a"">,{{<!!!!'!>!>},<,>},<!!<!>,<}<!!'}!!o{!>,<i!,i<!!!!'!!!>a,>}}},{{{{<e"!>},<!!>}},{<!!!!!>e>}}}},{{}}},{{{<>,{<!>,<o!!!!!>,<!"!!!>},<'!'}u>}},{}},{{<!!!>a!>u"!<!>,<{'!>},<!!!>">,<!ouo!!o!!!>!>"!>},<}u>},{<!>,<!<'!!e>,{{<>},<o!>,<!!!>'!!ei'e!!{>}}},{{{{},{<o!u>}},{<a!>},<!!!>,<<,!u!>!}!!">,{<!>},<!!!!!!,!!!>>}},{{{}},<ae!!ue<!!!>!!a>}}},{{{{<!!a{!>!!{o!!,!>,<>},{<}ee,>}}},{{{<>,<>},{},{{{}},{<eao!!>,<>}}},{{<{>},{}},{{<!!!>!!!!!!!!"!!"a,!>i}!>i!>},<e>},{{<>},<>}}}}},{{<e!a!!,<!{ii>,<>},{{{<,!!!>!!!>!",,i!eoe>,{<!!!i!>!!!!u{!,!!{!!{!>>}},{{},{{<!>,<!>{a>}}},{{<'i!ei!"!>!"!>},<!!!>u,!o!>,<!!e!>!>}>},<!!!>},<!!,!!,!!"a!>},<!eu!!!>{!>,}!!'''!!{>}},{}}},{{{{{{<}'!!}!>,<e!>},<i!>},<!>',!>!!!>!,!!!!'>},{}}},<!!!>ea!>,<!!a!!!>!>,<<!!ie<!!e>},{{<!>!i}!>'!u'e<!!!>,,!,'!!!>!!e>,{<!!ie}!!e{!!!!<}{!>,<{,!>,<eie!>},<,!!!">}},{}}},{<!,"uu!!!>o!>,<a!{!,!>!!}!>},<u>},{<}>,{}}}}},{{},{{{<uie!!'ie,a!>},<'!!!>o>},{{},<u>}},{{}},{{<ai!!!>i!!!>{!>,<"'!"uo',,e>}}},{{{{<>},{<!!!>"!!!!!!e!!!>'!},aa<"!>,<!!!>ia}>}},{{},{<>}},{<e!!}u<!u!!'<>,{<u"oo'!>},<!,!"<e!>,<!!o!!>}}},{<!!!oioe"'!>},<u!!!>!!<!{!!'i>}}},{{{{}},{{{<!!!!<i,!!,!!!>'aiieo{ao>},<!!!>!!!!eai,ui!!!>!!}}{!>,<!!!>},<!!!>>}},{}},{{{{<!"!>,<!>,<''!>},<!!!>>},<!>,<>},{{{}},{<i!!!i'!!oe!!!ao!>!>},<i<!!<e""!>>,{{{<u,,i,a}{o!!u}{'!!!>>,{<>}}},{<aaea}i,!!!{!!a!{{>}}},{{{{<!!>},<<',!>e!>},<!!!>!>,<>},<!>o>},{{<>}}}}},{<!!u{!!!!!!!>},<,{'}!!!u,"!>,<o!!<!u!!!>!>,<i!'>},{}}}},{{{{},{{},{{{{{<o!>},<!>,<u!!'u!!o>,{{<!!!>!!!!!>,<iu}"!!!>>},<!!!>o!!{!>,<>}},{{},{<}<o!!!!!>"!>!>!!!>au{'!!!>},<!!>}}},{{},{{<!!o!>},<!!}!!e<"!!<>,<}!!!>},<i{"!!!>u!>},<i">}},{<{"!!},!!!>a!!!!}!!!>>,{<!!!!u!!!>,<!!{!!<!!!>!{e!!a!!o!!!>!!!>,<!i}o{>}}},{<o!>!!a!!i!!!>!!!><ioe!!o!!!i>,{{<eo}!'"!!!!!>o}i!!"<},>},<a!!!>!!"!!!'i{{!!!!!>>}}},{<"{"o!>!>},<!"!!e!>,<uia!!!>{o>}},{<}<u!>u<o!>},<e,!!,!>}!>!>,<<i!!!>!>>,<}aoiiu>},{}},{}}},{{{{}},{{},{<!!<!'a!i,ee!!<!!!!}>,{}}},{}},{{{<!>,<!>{,>,<!!!>'!>},<"!!!!!!!>,!!!>,<!!!><!!>},{}},{{{<!!i}i"}>}},{<!!!>}"'}!!ui"!>!>,<<!>ii>,{<"!!!>,<,a'!>{u>}}},{{<!>!>},<!><{<!!i>,<i!!!<uo!!!>'!u<!!!>,<!u!>},<<!!!!!>>},{{{{{<!!!>!!!>,!!!!!>e!!!!!>!>},<u>,{{},<!!!!ui>}},{}}},<u{<{!!ua!>},<!!!>!!,,!>},<oi!>'>},{<"}!!!>!e!"!!u!!!>!!!!<!!>}},{{<<"u"{!!}!!!i{e>,{{<uoe!>{,e'!!!>i!"!!>},<,!!!a!>u}!!!>!>'!!!>>}},{{{{{{<a>}},{}},{}},<<!ueoe!>ae!!u!!'!a}<!!!!!>{">}}}}},{}},{{{{{{<!,",!>}!!""!!!>a"!uo!!!>!>,<'>}},{<'u!!!>'!!u{!!!>>}},{{},{}},{{<!>,<!!{!!!>,<>},{<!!>}}},{{{{},{}},{{{{<>},<!>},<<'}a!>},<<!!u!>},!!>}},<<""!!!>!!"i!!'!<,}'!!>}},{{{{},{{{<<oa!>,<!!!!!>e,}!>'{<>},{<>}},{<}!!!>>}}}},{{{{<!>},<!>,<u}'>},{<,e>}},{{{<}>},<!,!!!>e!a,iu!!}!>!"ui,au>},{{{<i'!e{>}},{<!!e!!!!oo!>},<<>}}},{{<!!,!!!>>},{{},{<o}!><{}i>}}}}},{{}}}},{{{<>,{<o!>u!!!>!>,<{!>,<!>,<i}!!!>!<!!!>,<i!>>,{}}},{<!>,<u{!>},<<!>'!>},<!<!!',<!!!>},<!!!>!a!!<>},{{<!!,!!!!!>!!!!u!>,<<!!!>{,>}}}}},{{},{{{<!!{}'!>!>},<>}},{<iu>,{{<'<!!io!<,}u!>,<{!e'{<{e>},<ae{,!!e!>,<}o!!u'!>},<!>!!">}}}},{}},{{{{{<!"!>,<!>},<o<{!!!>},<>}},<!>,<!><,!!"!o!}}!>,<o!>!>},<!>!>,<}"i!>},<>}},{{{<}ou!>o!>},<!>!!!>,!>!!!>!!!!!>>}},{{<}>}}},{{},{<}!!!>,<a",o!'!>},<!!,a!<<>,{<>}},{{{{},<{!!"!!ui!!!>{}!>},<!!">},{{<"u!!"}ue<<!>,<!!'}ii>}},{{{<""!!u!!{'!>,aue!!a"!!>},<i!!i'a!"i!>},<,!>,<{}!!!!!>>},{{<u!>,<<,u"!>,<"u,}i>}},{{{<>},{<ua"u!!">}},<>}}},{{<!!!!!!!!}i!>},<ua,!!!>!>},<!!u!!!!!>!!!!">},{<''!!!>!u!!,>}}}},{{{<!!!!!"!!!!!!"!>},<{!!{{!!<e!>,<ui!>},<>},{{<i!>!!!>},<!!!>!!!>"!<>},{<,o}<ieuo'!!i!>,>}},{<!ou!!iaa,'au!u!>},<>,{<i!!'!>,<,"!>!>},<!!!!!!}}'o'a{>}}},{{{{<{>},{{{<!!<!>},<{e!o!!!!!>i}!>,<iu>}},{}}},{}}}}}},{{{{<!{>,<!a,>}},{{<>,<!!!eu>},{{<!>!!{!!,oo!!!!<a!>},<!!{>},{<"u"!a!>,<!!i!>,<!!!>!!!>,<">}},{{{}},{{}},{{{<>,{}},{<!iia}}'!>},<!!}!!!>!!!>!>,<'!ua>,{{<!>,<ii{!>},<'u!!u>},{<u{o,o{!>,<!>,<a}o!>},<!}"!!i>}}}},{},{{<'!!"!!!>,a<!!!><'!!i",!>"!>i>},{<!'aua!!!!<!>,<!!!"!>,!!,!!!>"<e!io<!!!>>}}}}},{{{<>},{{<'u>}}},{<,!o>}},{{{<o,!>},<{o!}e!>!!!>io">},{}},{{<i!}!>},<>}},{<!,u"!'<!>,<"!>!>!!!!!>ae>,<,!>,<'!!'a,>}}},{{{},{{<}iaa<u>},{<!>},<!>!><e!>,<!>"!!,u}'>}},{<a!!!>!!<,!>},<!!}!>!!e>}},{{{{<ou!!oi!>,<!>,<e!>},<!!!!!!!!!>""o'<>},{<!",ao','e!>ou,!!'>}},{<{<ai"o!>,<!!!>{e!>},<u{!!!!!!!>'ai>,{<<i<!>,<!>},<!>,<"a>,{<!!!>'<!!!>},<!!!>,<!!!>a{!!!>},<!!!>,<!!!><!>,<""!!>}}},{{<!!!>i!>},<!!">},<!!"<{u!>!>'!!!>ia'!!!!e!,!"!>!>},<>}},{{{{<<a<!!i'!{!!i>},{<}'!>,<{{!!!>",>}},{<!}!!!>!>},<>}},{{}}},{{{}},{{{<!!!>!>,<e!!!>!>,<!ue!}!!o!>!>>}},{<i{"ue>}}}},{{<!!!!'i!!!>'!!'!>,<e!!"o!'aa!!!!!>au!>,<!!!>,<>,{<'!!a!>!!o"!io"<!>,<!!i<<o!!!>},<{>,{<!!!!""!>!!!>},<<!>,<!a"}!!!>!!!><!>>}}},{{<,u!!,a!!!ui}!>}e!!!>,>}}}},{{{{<!>!!iio!>!!i'oe{}>},{<u}!!!!o,">,<!>uea!>""!>},<{!>},<,,!i!!!>},<!>a>}},{{{<!!ua'!!!>,<!>,<!!!>!"{!!!>!!!>,<"!!!>>}},{{<i!!!>,<a'!>},<'<,a>},<!!!!,!!!>!>},<uo!}!!!>!>,<!!,"!!!>},<u!o>},{{<<!!!>!!!>au>}}},{{{},{<!!!>,<u!>,<!!!a>,{}}},{{},{{<i!!!>},<!"a!""a!!!><!!!>o!>'a!!!!!>u}io>},{<!!}!'<<"i{u!i!>!!!>!!!>a{!!!>i>,{<{,>}}},{<<!!!>!!>}},{{{<!>,<!>,<'!!e!a!!!!{a!>,<!>,<e!!!>,<i"<!!!>u!>,<>}},{{<o!>,<!ai<o{!>oe!>{!>,<e}}>},{}},{{<e{!!,!!!a!>,<!!!>,<{!>,}!}"'u!!i>},{{}}}},{{{}},{{{<{!>,<!!!>,<u!!!>,<!!e!!!>!!e}<!>},<""}!!!>!>},<>},{<"<a!{<!>},<<!!!>{!!!>},<>}}},{{{{<!!!!a!>},<""!!{>}},{{<o"!!}!>},<uo!>},<!>,<i!>,<"!!<>}},{{<}!>,<!>},<!!'i!>,<iu!!"ioiu!!o!>,<u}>}}},{<}!!<e!!i<!!>,{<!"}>}},{{{{}}},{<a!>u!>,<<"!!!!!>,>}}}}}},{{{<ai!!!{e>,{<!!>}},{<!!!>!''!!!>i!!!>},<!>},<!>!>}",!>,<<!>eo!!!>>}},{{<{<!!!>"'!!!!!!"ui!>},<e!>!!!!!!u>,{{<!!!>}{>}}}},{{{{<<!<!>,<"{">},<!''!!!!!>!>},<{{<!!'!,!"!!!!!>e>}},{{<!!e!!!>u<e{!!a!>},<!>},<!!!>{,"!'>},<a"e!>,<"e}!>,<!!!!!!o!>!!!>aa!!!>!>},<!>,<u!!!!!>>},{<oa!!!!'u!"u!>e!>},<'{,>}}}}},{}}}
