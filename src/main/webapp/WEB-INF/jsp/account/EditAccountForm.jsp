<%--

       Copyright 2010-2026 the original author or authors.

       Licensed under the Apache License, Version 2.0 (the "License");
       you may not use this file except in compliance with the License.
       You may obtain a copy of the License at

          https://www.apache.org/licenses/LICENSE-2.0

       Unless required by applicable law or agreed to in writing, software
       distributed under the License is distributed on an "AS IS" BASIS,
       WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
       See the License for the specific language governing permissions and
       limitations under the License.

--%>
<%@ include file="../common/IncludeTop.jsp"%>

<div id="Catalog" class="card-container" style="max-width: 600px; margin: 0 auto; padding: 20px;">
    <h2>Edit Profile</h2>
    <p class="subtitle" style="color: #666; margin-bottom: 20px;">Update your password and personal details below.</p>

    <form method="post" action="${pageContext.request.contextPath}/account/edit" id="accountForm">

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
        <input type="hidden" name="username" value="${account.username}" />

        <fieldset style="border: 1px solid #ddd; border-radius: 8px; padding: 15px; margin-bottom: 20px;">
            <legend style="font-weight: bold; padding: 0 8px;">Security Settings</legend>

            <table style="width: 100%; border-collapse: collapse;">
                <tr>
                    <td style="padding: 8px 0; width: 35%;"><strong>User ID:</strong></td>
                    <td style="padding: 8px 0;"><span class="badge-username" style="background: #f0f0f0; padding: 4px 8px; border-radius: 4px; font-family: monospace;">${account.username}</span></td>
                </tr>
                <tr>
                    <td style="padding: 8px 0;">New password:</td>
                    <td style="padding: 8px 0;">
                        <input type="password" name="password" id="password" placeholder="Leave blank to keep current" style="width: 100%; padding: 6px; box-sizing: border-box;" />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 8px 0;">Repeat password:</td>
                    <td style="padding: 8px 0;">
                        <input type="password" name="repeatedPassword" id="repeatedPassword" placeholder="Re-enter new password" style="width: 100%; padding: 6px; box-sizing: border-box;" />
                    </td>
                </tr>
            </table>
        </fieldset>

        <fieldset style="border: 1px solid #ddd; border-radius: 8px; padding: 15px; margin-bottom: 20px;">
            <legend style="font-weight: bold; padding: 0 8px;">Account Information</legend>
            <%@ include file="IncludeAccountFields.jsp"%>
        </fieldset>

        <div style="display: flex; justify-content: space-between; align-items: center; margin-top: 20px;">
            <a href="${pageContext.request.contextPath}/order/list" style="text-decoration: none; color: #0066cc;">
                &larr; View My Orders
            </a>
            <input type="submit" name="editAccount" value="Save Changes" style="background-color: #0066cc; color: #fff; border: none; padding: 10px 20px; border-radius: 4px; cursor: pointer; font-weight: bold;" />
        </div>
    </form>
</div>

<script>
    // 간단한 비밀번호 일치 확인 클라이언트 스크립트
    document.getElementById('accountForm').addEventListener('submit', function(e) {
        var pwd = document.getElementById('password').value;
        var repeatPwd = document.getElementById('repeatedPassword').value;

    })();
</script>

<%@ include file="../common/IncludeBottom.jsp"%>