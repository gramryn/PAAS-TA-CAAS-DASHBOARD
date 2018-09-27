<%--
  Replicaset yaml
  @author CISS
  @version 1.0
  @since 2018.08.14
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="org.paasta.caas.dashboard.common.Constants" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="content">
    <h1 class="view-title"><span class="detail_icon"><i class="fas fa-file-alt"></i></span> <c:out value="${replicaSetName}"/></h1>
    <jsp:include page="../common/contentsTab.jsp" flush="true"/>
    <!-- YAML 시작-->
    <div class="cluster_content03 row two_line two_view">
        <ul class="maT30">
            <li>
                <div class="sortable_wrap">
                    <div class="sortable_top">
                        <p>YAML</p>
                    </div>
                    <div class="paA30">
                        <div class="yaml">
                            <pre class="brush: yaml" id="resultArea">
                            </pre>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    <!-- YAML 끝 -->

</div>

<%--SyntexHighlighter--%>
<jsp:include page="../common/syntaxHighlighter.jsp" flush="true"/>


<script type="text/javascript">

    // GET DETAIL
    var getDetail = function() {
        viewLoading('show');

        var reqUrl = "<%= Constants.API_URL %><%= Constants.URI_API_REPLICA_SETS_YAML %>"
                .replace("{namespace:.+}", NAME_SPACE)
                .replace("{replicaSetName:.+}", '<c:out value="${replicaSetName}"/>');
        procCallAjax(reqUrl, "GET", null, null, callbackGetDetail);
    };


    // CALLBACK
    var callbackGetDetail = function(data) {
        if (!procCheckValidData(data)) {
            viewLoading('hide');
            alertMessage();
            return false;
        }

        $('#resultArea').html('---\n' + data.sourceTypeYaml);
        viewLoading('hide');
    };

    // ON LOAD
    $(document.body).ready(function () {
        getDetail();
    });

</script>