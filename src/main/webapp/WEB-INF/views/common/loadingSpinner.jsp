<%--
  Common Syntax Highlighter

  author: REX
  version: 1.0
  since: 2018.09.13
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div id="loadingSpinner" style="display: none;">
</div>

<script type="text/javascript">
    // ON LOAD
    // $(window).bind("load", function () {
    $(document.body).ready(function () {
        viewLoading('show');
    });

</script>
