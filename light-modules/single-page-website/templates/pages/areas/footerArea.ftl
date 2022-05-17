<footer>
    <div class="container">
        <div class="row">
            [#list components as component ]
            <div class="col-lg-4 col-md-2 col-sm-4 col-xs-6">
                <div class="text-section">
                    [@cms.component content=component /]
                </div>
            </div>
            [/#list]
        </div>
    </div>
</footer>