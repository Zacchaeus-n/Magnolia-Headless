<!-- Banner 1 -->
[#assign styleAttribute = "style='background-color: #d9d8d4;'"]
[#if content.imageLink?has_content]
    [#assign asset = damfn.getAsset(content.imageLink)!]
    [#if asset?has_content && asset.link?has_content]
        [#assign styleAttribute = "style='background-image: url(${asset.link});'"]
    [/#if]
[/#if]

<div class="banner" ${styleAttribute}>
    [#if content.tagline?has_content]
    <div class="container bg-gradient-opacity-lefted">
        <div class="column">
            <div>
                <h3>${content.tagline}</h3>
            </div>
        </div>
    </div>
    [/#if]
</div>
<!-- End: Banner 1 -->