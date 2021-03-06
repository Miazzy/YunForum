<div class="footer">
    <div class="wrapper ft-smaller">
        <div class="footer-nav">
            <a rel="copyright" href="http://127.0.0.1:8080" target="_blank">hacpai.com</a>
        ${visionLabel}
        </div>
        <div class="fn-hr5"></div>
        <div>
        ${sloganLabel}
        </div>
        <div class="fn-hr5"></div>
        <div>
            © ${year} <a href="https://b3log.org" target="_blank">B3log 开源</a>旗下云南链滴科技有限公司版权所有
            <div class="fn-hr5"></div>
            <a href="https://sym.b3log.org" target="_blank">Sym</a>
        ${version} • ${elapsed?c}ms
        </div>
         <#if footerBeiAnHao != ''>
             <div class="fn-hr5"></div>
             <div>
                 <a href="http://www.miitbeian.gov.cn/" target="_blank">${footerBeiAnHao}</a>
             </div>
         </#if>
    </div>
</div>
<script src="${staticServePath}/js/symbol-defs${miniPostfix}.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/lib/compress/libs.min.js?${staticResourceVersion}"></script>
<script src="${staticServePath}/js/common${miniPostfix}.js?${staticResourceVersion}"></script>
<script>
    var Label = {
        reportSuccLabel: '${reportSuccLabel}',
        breezemoonLabel: '${breezemoonLabel}',
        confirmRemoveLabel: "${confirmRemoveLabel}",
        invalidPasswordLabel: "${invalidPasswordLabel}",
        loginNameErrorLabel: "${loginNameErrorLabel}",
        followLabel: "${followLabel}",
        unfollowLabel: "${unfollowLabel}",
        symphonyLabel: "${symphonyLabel}",
        visionLabel: "${visionLabel}",
        cmtLabel: "${cmtLabel}",
        collectLabel: "${collectLabel}",
        uncollectLabel: "${uncollectLabel}",
        desktopNotificationTemplateLabel: "${desktopNotificationTemplateLabel}",
        servePath: "${servePath}",
        staticServePath: "${staticServePath}",
        isLoggedIn: ${isLoggedIn?c},
        funNeedLoginLabel: '${funNeedLoginLabel}',
        notificationCommentedLabel: '${notificationCommentedLabel}',
        notificationReplyLabel: '${notificationReplyLabel}',
        notificationAtLabel: '${notificationAtLabel}',
        notificationFollowingLabel: '${notificationFollowingLabel}',
        pointLabel: '${pointLabel}',
        sameCityLabel: '${sameCityLabel}',
        systemLabel: '${systemLabel}',
        newFollowerLabel: '${newFollowerLabel}',
        makeAsReadLabel: '${makeAsReadLabel}'
        <#if isLoggedIn>,
        currentUserName: '${currentUser.userName}'</#if>
         <#if csrfToken??>,
            csrfToken: '${csrfToken}'
         </#if>
    }
    Util.init(${isLoggedIn?c})
    
    <#if isLoggedIn>
    // Init [User] channel
    Util.initUserChannel("${wsScheme}://${serverHost}:${serverPort}${contextPath}/user-channel")
    </#if>
</script>
<#if algoliaEnabled>
<script src="${staticServePath}/js/lib/algolia/algolia.min.js"></script>
<script>
    Util.initSearch('${algoliaAppId}', '${algoliaSearchKey}', '${algoliaIndex}')
</script>
</#if>
${footerMobileCode}
