[#assign sectionType = "a"]
[#assign divClassText = "col-lg-5 col-sm-6"]
[#assign divClassImage = "col-lg-5 col-lg-offset-2 col-sm-6"]

[#if content.textPosition?has_content && content.textPosition == "right"]
    [#assign sectionType = "b"]
    [#assign divClassText = "col-lg-5 col-lg-offset-1 col-sm-push-6 col-sm-6"]
    [#assign divClassImage = "col-lg-5 col-sm-pull-6 col-sm-6"]
[/#if]
<!-- Section 1 -->
<a  name="${content.@id}"></a>
<div class="content-section content-section-${sectionType}">
    <div class="container">
        <div class="row">
            <div class="${divClassText}">
                <div class="clearfix"></div>

                [#if content.headline?has_content]
                <h3>${content.headline}</h3>
                [/#if]

                [#if content.subHeadline?has_content]
                <h4>${content.subHeadline}</h4>
                [/#if]

                ${cmsfn.decode(content).text!}

                <hr class="section-heading-spacer">
            </div>
            [#if content.imageLink?has_content]
            [#assign asset = damfn.getAsset(content.imageLink)!]
              [#if asset?has_content && asset.link?has_content]
                <div class="${divClassImage}">
                  <img class="img-responsive img-circle center-block" src="${asset.link}" alt="">
                </div>
              [/#if]
            [/#if]
        </div>
    </div>
</div>