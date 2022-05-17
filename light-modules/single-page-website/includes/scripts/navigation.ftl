<!-- Navigation -->
<nav class="navbar navbar-default navbar-fixed-top topnav">
    <div class="container topnav">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <!-- Left Side Navigation Link: The page itself to jump back up. -->
            <a class="navbar-brand topnav" href="#">${content.navigationTitle!content.title!content.@name}</a>
        </div>
        <div class="collapse navbar-collapse"
            id="bs-example-navbar-collapse-1">
            <!-- Right Side Navigation: The sections within the page jumping to each section. -->
            <ul class="nav navbar-nav navbar-right">
                [#if content.main?has_content]
                    [#assign allComponents = cmsfn.children(content.main, "mgnl:component")]
                    [#list allComponents as componentNode ]
                    [#if componentNode.navigationTitle?has_content || componentNode.headline?has_content]
                        <li>
                            <a href="#${componentNode.@id}">${componentNode.navigationTitle!componentNode.headline}</a>
                        </li>
                    [/#if]
                    [/#list]
                [/#if]
            </ul>
        </div>
    </div>
</nav>
<!-- End: Navigation -->