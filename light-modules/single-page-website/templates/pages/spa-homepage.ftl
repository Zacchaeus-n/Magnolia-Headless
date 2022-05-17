<!DOCTYPE html>
<html lang="en">
<head>
  [@cms.page /]
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<title>${content.navigationTitle!content.title!content.@name}</title>
	${resfn.css("/single-page-website.*css")}
	<link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>
<body>
  [#include "/single-page-website/includes/scripts/navigation.ftl"]

	[#assign styleAttribute = "style='background-color: #f8f8f8;'"]
	[#if content.imageLink?has_content]
			[#assign asset = damfn.getAsset(content.imageLink)!]
			[#if asset?has_content && asset.link?has_content]
					[#assign styleAttribute = "style='background-image: url(${asset.link});'"]
			[/#if]
	[/#if]
  <div class="intro-header" ${styleAttribute}>
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="intro-message">
						<div class="bg-gradient-opacity-centered">
							<h1>${content.title!content.@name}</h1>
              ${cmsfn.decode(content).abstract!}
						</div>
						<hr class="intro-divider">
					</div>
				</div>
			</div>
		</div>
	</div>
  [@cms.area name="main"/]
  [@cms.area name="footer"/]
  ${resfn.js("/single-page-website.*js")}
</body>
</html>