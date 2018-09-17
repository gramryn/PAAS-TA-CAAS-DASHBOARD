<%--
  Deployments main
  @author Hyungu Cho
  @version 1.0
  @since 2018.08.14
--%>
<%@ page import="org.paasta.caas.dashboard.common.Constants" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<div class="content">
    <jsp:include page="common-pods.jsp" flush="true"/>

    <%-- NODES HEADER INCLUDE --%>
    <jsp:include page="../common/contentsTab.jsp" flush="true"/>

    <!-- Details 시작-->
    <div class="cluster_content01 row two_line two_view harf_view">
        <ul class="maT30">
            <li class="cluster_first_box">
                <div class="sortable_wrap">
                    <div class="sortable_top">
                        <p>Details</p>
                    </div>
                    <div class="account_table view">
                        <table>
                            <colgroup>
                                <col style="width:20%">
                                <col style=".">
                            </colgroup>
                            <tbody>
                            <tr>
                                <th><i class="cWrapDot"></i> Name</th>
                                <td id="name"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> Labels</th>
                                <td id="labels" class="labels_wrap"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> Creation Time</th>
                                <td id="creationTime"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> Status</th>
                                <td id="status"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> QoS Class</th>
                                <td id="qosClass"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> Node</th>
                                <td id="node"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> IP</th>
                                <td id="ip"></td>
                            </tr>

                            <tr>
                                <th><i class="cWrapDot"></i> Conditions</th>
                                <td id="conditions"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> Controllers</th>
                                <%--<td>Replica Set : <a href="http://caas_replica_view.html">spring-cloud-web-user-d7c647b44</a></td>--%>
                                <td id="controllers"></td>
                            </tr>
                            <tr>
                                <th><i class="cWrapDot"></i> Volumes</th>
                                <td id="volumes"></td>
                                <%--<td><a href="#">default-token-9vmgs</a></td>--%>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </li>
            <!-- Details 끝 -->
            <!-- Containers 시작 -->
            <li class="cluster_third_box maB50">
                <div class="sortable_wrap">
                    <div class="sortable_top">
                        <p>Containers</p>
                    </div>
                    <div class="view_table_wrap toggle">
                        <table class="table_event condition alignL">
                            <colgroup>
                                <col style='width:auto;'>
                                <col style='width:15%;'>
                                <col style='width:25%;'>
                                <col style='width:15%;'>
                            </colgroup>
                            <tr id="noContainersResultArea" style="display: none;"><td colspan='6'><p class='service_p'>조회 된 Pods가 없습니다.</p></td></tr>
                            <thead id="containersResultHeaderArea">
                            <tr>
                                <td>Name</td>
                                <td>Status</td>
                                <td>Images</td>
                                <td>Restart count</td>
                            </tr>
                            </thead>
                            <tbody id="resultArea">
                            </tbody>
                        </table>
                    </div>
                </div>
            </li>
            <!-- Containers 끝 -->
        </ul>
    </div>
    <!-- Details  끝 -->
</div>

<!-- modal -->
<div class="modal fade dashboard" id="layerpop">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <!-- header -->
                <div class="modal-header">
                    <!-- 닫기(x) 버튼 -->
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <!-- header title -->
                    <h4 class="modal-title">Auto- Scaling  설정</h4>
                </div>
                <!-- body -->
                <div class="modal-body">
                    <div class="modal-bg">
                        <span>
                            앱 이름
                        </span>
                        <div class="pull-right">
                            <input id="check1" checked="checked" type="checkbox" />
                            <label for="check1">자동확장 시</label>
                            <input id="check2" type="checkbox" />
                            <label for="check2">자동축소 사용</label>
                        </div>
                    </div>
                    <div class="">
                        <table class="modal_t">
                            <colgroup>
                                <col style='width: 123px;'>
                                <col style='width:40px;'>
                                <col>
                                <col style='width:50px;'>
                                <col style='width:40px;'>
                                <col>
                                <col style='width:20px;'>
                            </colgroup>
                            <tbody>
                            <tr>
                                <th>인스턴스 수 설정
                                </th>
                                <td>최소</td>
                                <td>
                                    <div>
                                        <input type="text" value="1" />
                                        <button><i class="fas fa-sort-up"></i>
                                        </button>
                                        <button><i class="fas fa-sort-down"></i>
                                        </button>
                                    </div>
                                <td><p>개</p>
                                </td>
                                </td>
                                <td>최대</td>
                                <td>
                                    <div>
                                        <input type="text" value="10" />
                                        <button><i class="fas fa-sort-up"></i>
                                        </button>
                                        <button><i class="fas fa-sort-down"></i>
                                        </button>
                                    </div>
                                </td>
                                <td><p>개</p>
                                </td>
                            </tr>
                            <tr>
                                <th>CPU 임계 값 설정
                                </th>
                                <td>최소</td>
                                <td>
                                    <div>
                                        <input type="text" value="20"/>
                                        <button><i class="fas fa-sort-up"></i>
                                        </button>
                                        <button><i class="fas fa-sort-down"></i>
                                        </button>
                                    </div>
                                <td><p>%</p>
                                </td>
                                </td>
                                <td>최대</td>
                                <td>
                                    <div>
                                        <input type="text" value="80" />
                                        <button><i class="fas fa-sort-up"></i>
                                        </button>
                                        <button><i class="fas fa-sort-down"></i>
                                        </button>
                                    </div>
                                </td>
                                <td><p>%</p>
                                </td>
                            </tr>
                            <tr>
                                <th>메모리 사이즈 설정
                                </th>
                                <td>최소</td>
                                <td>
                                    <div>
                                        <input type="text" value="256" />
                                        <button><i class="fas fa-sort-up"></i>
                                        </button>
                                        <button><i class="fas fa-sort-down"></i>
                                        </button>
                                    </div>
                                <td><p>MB</p>
                                </td>
                                </td>
                                <td>최대</td>
                                <td>
                                    <div>
                                        <input type="text" value="2048" />
                                        <button><i class="fas fa-sort-up"></i>
                                        </button>
                                        <button><i class="fas fa-sort-down"></i>
                                        </button>
                                    </div>
                                </td>
                                <td><p>MB</p>
                                </td>
                            </tr>
                            <tr>
                                <th>시간 설정</th>
                                <td> </td>
                                <td>
                                    <input class="time_left" type="text" value="10" />
                                </td>
                                <td> </td>
                                <td> </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button type="button" class="btns2 colors4 pull-left" data-dismiss="modal">삭제</button>
                    <button type="button" class="btns2 colors4" data-dismiss="modal">변경</button>
                    <button type="button" class="btns2 colors5" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    // ON LOAD
    $(document.body).ready(function () {
        viewLoading('show');
        getDetail();
        viewLoading('hide');
    });

    // GET DETAIL
    var getDetail = function() {
        var reqUrl = "<%= Constants.API_URL %><%= Constants.URI_API_PODS_DETAIL %>"
            .replace("{namespace:.+}", NAME_SPACE).replace("{podName:.+}", G_POD_NAME);
        procCallAjax(reqUrl, "GET", null, null, callbackGetDetail);
    };

    // CALLBACK
    var callbackGetDetail = function(data) {
        viewLoading('show');

        if (false === procCheckValidData(data)) {
            viewLoading('hide');
            alertMessage("Node 정보를 가져오지 못했습니다.", false);
            return;
        }

        var labels = stringifyJSON(data.metadata.labels).replace(/,/g, ', ');
        // var selector = stringifyJSON(data.spec.selector).replace(/matchLabels=/g, '');

        document.getElementById("name").textContent = data.metadata.name;
        document.getElementById("labels").innerHTML = createSpans(labels, "false");
        document.getElementById("creationTime").textContent = data.metadata.creationTimestamp;
        document.getElementById("status").innerHTML = data.status.phase;
        document.getElementById("qosClass").textContent = data.status.qosClass; //qosClass
        document.getElementById("conditions").textContent = conditionParser(data.status.conditions);

        if(data.spec.nodeName == null) {
            document.getElementById("node").innerHTML =  "-";
        }

        if(data.spec.nodeName != null) {
            document.getElementById("node").innerHTML =  "<a href='javascript:void(0);' onclick='procMovePage(\"<%= Constants.URI_CLUSTER_NODES %>/" + data.spec.nodeName + "/summary\");'>"+
                data.spec.nodeName +
                '</a>';
        }

        document.getElementById("ip").textContent =  nvl(data.status.podIP, "-");

        if(labels.match('job-name')) {
            // jobs 기능이 구현되면 여기에 a링크 달 것
            document.getElementById("controllers").innerHTML = data.metadata.ownerReferences[0].name;
        } else {
            document.getElementById("controllers").innerHTML = "<a href='javascript:void(0);' onclick='procMovePage(\"/caas/workloads/replicaSets/" + data.metadata.ownerReferences[0].name + "\");'>"+
                data.metadata.ownerReferences[0].name +
                '</a>';
        }
        document.getElementById("volumes").textContent = data.spec.volumes[0].name;

        createContainerResultArea(data.status, data.spec.containers);

        viewLoading('hide');
    };

    var replaceLabels = function (data) {
        return JSON.stringify(data).replace(/"/g, '').replace(/=/g, '%3D').replace(/, /g, '&');
    };

    var createSpans = function (inputData, type) {
        var data = inputData.replace(/=/g, ':').split(/,\s/);
        var spanHtml = "";

        $.each(data, function (index, item) {
            if (type === "true" && index > 0)
                spanHtml += '<br>';

            if (item.length > 40) {
                var _kv = item.split(': ');
                if (_kv.length > 1) {
                    var _title = _kv[0];
                    var _content = _kv.reduce(function (prev, cur, idx) {
                        if (idx <= 1) return cur; else return prev + ':' + cur
                    });
                    var template = '<span class="bg_blue" data-target="#layerpop" data-toggle="modal" onclick="setLayerpop(this)">';
                    spanHtml += ( $(template).html('<a>' + _title + '</a>').attr('data-title', _title).attr('data-content', _content)[0].outerHTML + ' ' );
                } else {
                    spanHtml += '<span class="bg_gray">' + item.replace(': ', ':') + '</span> ';
                }
            } else {
                spanHtml += '<span class="bg_gray">' + item.replace(': ', ':') + '</span> ';
            }
        });

        return spanHtml;
    };
    
    var conditionParser = function (data) {
        var tempStr = "";
        for ( var index in data) {
            tempStr += data[index].type + ": " + data[index].status;
            if((data.length -1) == index) {
                break;
            }
            tempStr += ", ";
        }
        return tempStr;
    };

    // 좀 더 좋은 로직 있으면 수정바람...
    // statuses와 container 비교하는 구문..
    var createContainerResultArea = function (status, containers) {
        var resultArea = $('#resultArea');
        var resultHeaderArea = $('#containersResultHeaderArea');
        var noResultArea = $('#noContainersResultArea');

        var listLength;
        var containerStatuses = status.containerStatuses;

        listLength = containers.length;

        $.each(containers, function (index, itemList) {
            var containerStatusHtml = '';
            var _status = getContainerStatus(getContainer(containerStatuses, itemList.name), status.phase);
            if (_status.includes("Running")) {
                containerStatusHtml += '<span class="green2"><i class="fas fa-check-circle"></i></span>';
            } else if (_status.includes("Waiting")) {
                containerStatusHtml += '<span class="red2"><i class="fas fa-exclamation-circle"></i></span>';
            } else {
                containerStatusHtml += '<span><i class="fas fa-check-circle"></i></span>';
            }
            containerStatusHtml += (' ' + _status);

            var imageHtml = '<span data-toggle="tooltip" title="' + itemList.image + '">' + itemList.image + '</span>';

            resultArea.append('<tr>' +
                                '<td>' +
                                    "<a href='javascript:void(0);' onclick='showHide(" + index + ");\'>"+
                                        itemList.name +
                                    '</a>' +
                                '</td>' +
                                '<td>' + containerStatusHtml + '</td>' +
                                '<td>' + imageHtml + '</td>' +
                                '<td>' + nvl(getContainer(containerStatuses, itemList.name).restartCount, "-") + '</td>' +
                              '</tr>' +
                              '<tr style="display:none;" id="' + index +'">' +
                                '<td colspan="4">' +
                                    '<table class="table_detail alignL">' +
                                        '<colgroup>' +
                                            '<col style="*">' +
                                            '<col style="*">' +
                                        '</colgroup>' +
                                        '<tbody>' +
                                            '<tr>' +
                                                '<td>Name</td>' +
                                                '<td>' + itemList.name + '</td>' +
                                            '</tr>' +
                                            '<tr>' +
                                                '<td>Image</td>' +
                                                '<td>' + itemList.image + '</td>' +
                                            '</tr>' +
                                            '<tr>' +
                                                '<td>Environment variables</td>' +
                                                '<td>' + envParser(getContainer(containers, itemList.name)) + '</td>' +
                                            '</tr>' +
                                            '<tr>' +
                                                '<td>Commands</td>' +
                                                '<td>' + nvl(getContainer(containers, itemList.name).command, "-") + '</td>' +
                                            '</tr>' +
                                            '<tr>' +
                                                '<td>Args</td>' +
                                                '<td>' + nvl(getContainer(containers, itemList.name).args, "-")  + '</td>' +
                                            '</tr>' +
                                            '</tbody>' +
                                    '</table>' +
                                '</td>' +
                              '</tr>');

        });

        if (listLength < 1) {
            resultHeaderArea.hide();
            resultArea.hide();
            noResultArea.show();
        } else {
            noResultArea.hide();
            resultHeaderArea.show();
            resultArea.show();
            resultArea.tablesorter();
            resultArea.trigger("update");
        }
    };

    var getContainer = function (containerList, conatinerName) {
        if(!containerList) {
            return "";
        }
        var containerObject;

        for(var index =0; index < containerList.length; index ++) {
            if(containerList[index].name == conatinerName) {
                containerObject = containerList[index];
                return containerObject;
            }
        }
    };

    // 줄일 수 있으면 수정바라뮤ㅠㅠ 재귀를 쓸 타이밍인가;;
    var envParser = function (container) {
        var tempStr = "";
        if(container.env == null) {
            return tempStr = "-";
        }
        var envs = container.env;

        for( var key in envs ) {
            if(key != 0 ) {
                tempStr += '<br>';
            }

            if(Object.keys(envs[key])[1] == 'valueFrom') {
                var testObject = Object.values(envs[key])[1];
                var fieldRef = Object.values(testObject)[0];
                Object.keys(fieldRef).forEach(function (key) {
                    tempStr += fieldRef[key] + " &nbsp;";
                });
            } else {
                tempStr +=  Object.values(envs[key])[0]  + ":&nbsp;" + Object.values(envs[key])[1];
            }
        }
        return tempStr;
    };

    // state를 가져오기 위함.. state정보는 statuses에 있는데.. run된 흔적이 없으면 이게 null로 들어옴...
    var getContainerStatus = function (itemList, phase) {
        var statusStr = "";
        if( !itemList ) {
            statusStr = phase;
        } else {
            statusStr = Object.keys(itemList.state)[0];
        }

        return statusStr.charAt(0).toUpperCase() + statusStr.substring(1);
    };

    var showHide = function (indexId) {
        var tr = $('#' + indexId);

        if (tr.is(":visible")) {
            tr.css('display', 'none');
        } else {
            tr.css('display', 'table-row');
        }
    };
</script>
