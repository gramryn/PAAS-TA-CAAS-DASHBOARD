<%--
  Modal

  author: REX
  version: 1.0
  since: 2018.09.03
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%--TODO :: REFACTOR--%>
<%--FOR USERS--%>
<div class="modal fade in" id="layerpop1">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <!-- header -->
                <div class="modal-header">
                    <!-- 닫기(x) 버튼 -->
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <!-- header title -->
                    <h4 class="modal-title">Role 변경</h4>
                </div>
                <!-- body -->
                <div class="modal-body roleUpdate">
                    <%--TODO :: REMOVE COMMENTS--%>
                    <%-- <p class="account_modal_p"><span>hong@test.com</span> 님을 <span>Administrator</span>로 Role을 변경하시겠습니까?
                     </p>--%>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button type="button" class="btns2 colors4" data-dismiss="modal" id="roleUpdateBtn">변경</button>
                    <button type="button" class="btns2 colors5" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%--TODO :: REFACTOR--%>
<%--FOR USERS--%>
<div class="modal fade in" id="layerpop2">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <!-- header -->
                <div class="modal-header">
                    <!-- 닫기(x) 버튼 -->
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <!-- header title -->
                    <h4 class="modal-title">사용자 삭제</h4>
                </div>
                <!-- body -->
                <div class="modal-body deleteUser">
                    <%--TODO :: REMOVE COMMENTS--%>
                    <%--<p class="account_modal_p"><span>user</span> 님을 삭제하시겠습니까?<br>
                        사용자를 삭제하면 복구할 수 없습니다.
                    </p>--%>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button type="button" class="btns2 colors4" data-dismiss="modal" id="userDeleteBtn">삭제</button>
                    <button type="button" class="btns2 colors5" data-dismiss="modal">취소</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%--FOR USERS--%>
<div class="modal fade in" id="layerpop-single-button1">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <!-- header -->
                <div class="modal-header">
                    <!-- 닫기(x) 버튼 -->
                    <button type="button" class="close" data-dismiss="modal"></button>
                    <!-- header title -->
                    <h4 class="modal-title">Role 변경 완료</h4>
                </div>
                <!-- body -->
                <div class="modal-body roleUpdateComplete">
                    <%--TODO :: REMOVE COMMENTS--%>
                    <%-- <p class="account_modal_p"><span>hong@test.com</span> 님을 <span>Administrator</span>로 Role을 변경하시겠습니까?
                     </p>--%>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button type="button" class="btns2 colors4" data-dismiss="modal" id="okBtnUpdate">확인</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%--FOR USERS--%>
<div class="modal fade in" id="layerpop-single-button2">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <!-- header -->
                <div class="modal-header">
                    <!-- 닫기(x) 버튼 -->
                    <button type="button" class="close" data-dismiss="modal"></button>
                    <!-- header title -->
                    <h4 class="modal-title">사용자 삭제 완료</h4>
                </div>
                <!-- body -->
                <div class="modal-body deleteUserComplete">
                    <%--TODO :: REMOVE COMMENTS--%>
                    <%-- <p class="account_modal_p"><span>hong@test.com</span> 님을 <span>Administrator</span>로 Role을 변경하시겠습니까?
                     </p>--%>
                </div>
                <!-- Footer -->
                <div class="modal-footer">
                    <button type="button" class="btns2 colors4" data-dismiss="modal" id="okBtnDelete">확인</button>
                </div>
            </div>
        </div>
    </div>
</div>

<%--TODO :: REFACTOR--%>
<%--FOR DEPLOYMENTS--%>
<div class="modal fade dashboard" id="layerpop3">
    <div class="vertical-alignment-helper">
        <div class="modal-dialog vertical-align-center">
            <div class="modal-content">
                <!-- header -->
                <div class="modal-header">
                    <!-- 닫기(x) 버튼 -->
                    <button type="button" class="close" data-dismiss="modal">×</button>
                    <!-- header title -->
                    <h4 class="modal-title"></h4>
                </div>
                <!-- body -->
                <div class="modal-body">
                    <p></p>
                </div>
            </div>
        </div>
    </div>
</div>
