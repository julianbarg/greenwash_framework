library(shiny)

function(input, output) {
    output$displayImage <- renderImage({
        list(src = paste0("charts/", input$type), width = 1000)
    }, deleteFile = F)

    output$htmlText <- renderUI({
      HTML(paste0("<h3>*Partial disclosure: </h3>",
           "<strong>No = No greenwash</strong>: all LCA stages are included/cumulative
impacts of at least the last 5 years (for biodiversity impacts the
last 2 decades) are assessed; scope 1-2 is entirely covered and
scope 3 is as much as feasibly possible. For countries, emissions
from international aviation and shipping OR imported
emissions/footprints/impacts are covered. If not all stages/scopes
are covered, there is transparency about spatial and temporal
boundaries (what is and what is not covered) and even though
part of the organisation or product's/service's life cycle/scope 3
emissions are excluded, provisions exist for including them.<br>",
           "<strong>Likely greenwash</strong>: e.g. the claim is based on only some part of
the organisation's cumulative impacts or product's/service's life
cycle or large part of scope 3 is excluded and while system
boundaries are transparently communicated, there are no
provisions to continuously improve the coverage of all impacts.<br>",
           "<strong>Yes = Obvious greenwash</strong>: there is no transparency about the
fact that a significant part of LCA/scope/cumulative
impact/imported emission or footprint is excluded thereby
misleading consumers about the organisation's/product/service's
total environmental impact. For countries, there is no
transparency about imported emissions/footprints/impacts OR
emissions from international aviation and shipping are excluded
or not specified in targets.",
           "<h3>*Future washing: </h3>",
           "<strong>No = No greenwash</strong>: Rules out offsets to claim compensation for
own emissions, but rather emission reduction projects are
supported as contributions elsewhere. Organisations have
established deep decarbonization targets and interim targets,
including for residual emissions and planned removals, that allow
scrutiny with respect to actually achieving their stated net zero
target.<br>",
           "<strong>Likely greenwash</strong>: Organisations use compensation offsets,
while setting limits on the amount to be used which will be
reduced over time. For countries, in-country offsets are allowed.
Sub-national jurisdictions (e.g., California) using offsets outside
the jurisdiction are also considered likely greenwash.<br>",
           "<strong>Yes = Obvious greenwash</strong>: Net zero commitments are not based
on science and there is no clarity about whether and how to use
and limit offsets. At the same time offsets are used to compensate
for the emissions from the continued use of fossil fuels.",
           "<h2>Notes</h2>",
           "<strong>I1</strong>: ",
           "When assessing a claim related to environmental impacts, the product/service’s impact over its whole life cycle (on
and off-site) is relevant. For the organisation's impacts, the GRI Standards could provide an extensive list of specific
measures. For products, all production steps including (where applicable) extraction through production, use, and post-
use need to be included. Life cycle assessment should follow internationally accepted standards (e.g. ISO14000 series,
ISO 2006). Claims lead to greenwashing where they reflect only part of the life cycle/impacts and do not make clear
which part they refer to thereby creating a misleading impression about the overall impact on the environment. For
assessing this indicator, it is important to understand whether a) the exact scope of action and b) the limitations/system
boundaries are transparently communicated. Even if not all stages of life cycle or not all scopes/cumulative impacts
can be assessed for the claim, if boundaries are clearly communicated (what is and what is not assessed) and there is a
clear pathway of improving the coverage of scope, that is not a greenwash.<br>",
           "<strong>I2</strong>: ",
           "When publishing a positive claim about an aspect of the organisation/product/service which also has a significant
negative consequence on the environment without it being disclosed by the organinsation, the claim is considered a
greenwash. An example is when there is a conservation/ forest restoration-type claim but forests/other biodiverse
ecosystems have been destroyed to make place for tree plantations, or when reforestation/conservation efforts create
large scale monocultures. This indicator also relates to claims about projects which while potentially delievering some
ecological benefit, intensify existing land disputes and accelerate displacement, violence and impoverishment among
local villagers and/or exacerbate poor environmental conditions for local communities.<br>",
           "<strong>I3</strong>: The claim needs to relate to aspects that are significant in terms of the organisation/ product/service’s environmental
impact and should not result in an undue transfer of impacts, i.e. the creation or increase of other negative
environmental impacts at other stages of the organisation/product/service’s life cycle should be avoided, unless the
total net environmental benefit has been significantly improved.<br>",
           "<strong>I4</strong>: Absolute claims need to be supported by a high level of substantiation. Comparative claims such as 'greener,'
'friendlier,' 'more sustainable' can be justified if the advertised product/organisation/service provides environmental
benefit over that of the organisations’ previous products/services or competitors’ products/services, and the basis of the
comparison is clear. Similarly, if the advertised 'better' products/services only constitute a minority of the same
product/service range within the organisation creating the impression that it is the dominant type of product/service,
this has to be transparently communicated, otherwise it falls under this category of greenwashing.<br>",
           "<strong>I5</strong>: Offsetting cannot 'neutralize' harmful gases from fossil fuel products and cannot reduce carbon emissions entering the
atmosphere. Allowing fossil fuel emissions to be 'offset' by increases in biological carbon sequestration implies that
fossil and biotic forms are carbon are equivalent (Carton et al., 2021) which is untrue. \"Considering carbon storage on
land as a means to 'offset' CO2 emissions from burning fossil fuels (and idea wide currency) is scientifically flawed\"
(Mackey et al. 2013). There is a long list of experts and NGOs that disapprove of using offsets based on avoided
emissions to make net-zero claims (Bloomberg 2021). A number of organisations including the Gold Standard and
NewClimate Institute have started to promote an alternative 'contribution' claim (Gold Standard, 2017; Net Zero
Initiative, 2019; WWF, 2019; NewClimate Institute, 2020), where companies would make voluntary contributions to
finance emission reduction projects and not claim these as offsets towards a climate neutrality claim. CLARA's recent
report (CLARA 2021) also highlights that the expansion of offset markets enables emissions to continue and thus will
dangerously undermine the pathway to 1.5 C degrees. \"The limited removal capacity of nature should be reserved for
the most necessary of residual emissions\" (Ibid). The Science Based Targets Initiative (Science Based Targets, 2021)
says that \"the use of offsets is not counted as reductions toward the progress of companies’ science-based targets. The
SBTi requires that companies set targets based on emission reductions through direct action within their own
boundaries or their value chains\". Similar to the contribution claim described above, \"offsets are only considered to be
an option for companies wanting to contribute to finance additional emission reductions beyond their science-based
target/net-zero\" (Ibid). NewClimate’s Climate Responsibility approach (NewClimate Institute, 2020) also calls for
financially supporting others’ climate action but not 'netting' out emissions. Offsetting abroad also provides cheap
alternatives for wealthy countries not to reduce their own emissions at home - deepening climate injustice in several
ways, e.g. by depriving poor nations of 'cheap' carbon removal options, while giving an easier path toward realizing
the same goal for wealthy nations (Carton et al., 2021)."))
    })

}
