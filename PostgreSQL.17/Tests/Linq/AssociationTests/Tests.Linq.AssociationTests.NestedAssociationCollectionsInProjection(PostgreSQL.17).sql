-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	m_1."Id",
	"a_Documents"."Name"
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					"a_Email_1"."Id"
				FROM
					"NestedAssocEmailAdmin" "a_EmailAdminAssociations"
						LEFT JOIN "NestedAssocEmail" "a_Email" ON "a_EmailAdminAssociations"."EmailId" = "a_Email"."Id"
						LEFT JOIN "NestedAssocInternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
						LEFT JOIN "NestedAssocEmail" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
				WHERE
					"a_Admin"."Id" = "a_EmailAdminAssociations"."AdminId"
				LIMIT 1
			) as "Id"
		FROM
			"NestedAssocRequest" r
				LEFT JOIN "NestedAssocUser" "a_User" ON r."UserId" = "a_User"."Id"
				LEFT JOIN "NestedAssocAdmin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
	) m_1
		INNER JOIN "NestedAssocEmailAttachment" d ON m_1."Id" = d."EmailId"
		INNER JOIN "NestedAssocAttachment" "a_Attachment" ON d."AttachmentId" = "a_Attachment"."Id"
		INNER JOIN "NestedAssocDocument" "a_Documents" ON "a_Attachment"."Id" = "a_Documents"."AttachmentId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1.not_null,
	t1."Id"
FROM
	"NestedAssocRequest" r
		LEFT JOIN "NestedAssocUser" "a_User" ON r."UserId" = "a_User"."Id"
		LEFT JOIN "NestedAssocAdmin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
		LEFT JOIN LATERAL (
			SELECT
				1 as not_null,
				"a_Email_1"."Id"
			FROM
				"NestedAssocEmailAdmin" "a_EmailAdminAssociations"
					LEFT JOIN "NestedAssocEmail" "a_Email" ON "a_EmailAdminAssociations"."EmailId" = "a_Email"."Id"
					LEFT JOIN "NestedAssocInternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
					LEFT JOIN "NestedAssocEmail" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
			WHERE
				"a_Admin"."Id" = "a_EmailAdminAssociations"."AdminId"
			LIMIT 1
		) t1 ON 1=1

