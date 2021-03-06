<#include "../macro-head.ftl">
    <!DOCTYPE html>
    <html>
    <head>
        <@head title="Markdown ${tutorialLabel} - ${symphonyLabel}" />
        <link rel="canonical" href="${servePath}/guide/markdown">
        <link rel="stylesheet" href="${staticServePath}/js/lib/highlight/styles/github.css">
    </head>
    <body>
    <#include "../header.ftl">
        <div class="main">
            <div class="wrapper">
                <div class="fn-hr10"></div>
                <h2>Markdown ${tutorialLabel}</h2>
                <div class="fn-hr10"></div>
            </div>
            <div class="guide">
                <div class="fn-flex">
                    <div class="md">
                        <pre>
${md}
                        </pre>
                    </div>
                    <div class="content-reset">
                        ${html}
                    </div>
                </div>
            </div>
            <#include "../footer.ftl">
            <#if !markedAvailable>
                <script src="${staticServePath}/js/lib/highlight/highlight.pack.js"></script>
                <script>
             $('pre code').each(function (i, block) {
                    hljs.highlightBlock(block);
                });
             </#if>
        </script>
    </body>
    </html>