-- Firebird.2.5 Firebird

SELECT
	"m_1"."Id",
	"a_Documents"."Name"
FROM
	(
		SELECT DISTINCT
			(
				SELECT FIRST 1
					"a_Email_1"."Id"
				FROM
					"EmailAdminAssociation" "a_EmailAdminAssociations"
						LEFT JOIN "Email" "a_Email" ON "a_EmailAdminAssociations"."EmailId" = "a_Email"."Id"
						LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
						LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
				WHERE
					"a_Admin"."Id" = "a_EmailAdminAssociations"."AdminId"
			) as "Id"
		FROM
			"Request" "r"
				LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
				LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"
	) "m_1"
		INNER JOIN "EmailAttachmentAssociation" "d" ON "m_1"."Id" = "d"."EmailId"
		INNER JOIN "Attachment" "a_Attachment" ON "d"."AttachmentId" = "a_Attachment"."Id"
		INNER JOIN "Document" "a_Documents" ON "a_Attachment"."Id" = "a_Documents"."AttachmentId"

-- Firebird.2.5 Firebird

SELECT
	(
		SELECT FIRST 1
			1
		FROM
			"EmailAdminAssociation" "a_EmailAdminAssociations"
		WHERE
			"a_Admin"."Id" = "a_EmailAdminAssociations"."AdminId"
	),
	(
		SELECT FIRST 1
			"a_Email_1"."Id"
		FROM
			"EmailAdminAssociation" "a_EmailAdminAssociations_1"
				LEFT JOIN "Email" "a_Email" ON "a_EmailAdminAssociations_1"."EmailId" = "a_Email"."Id"
				LEFT JOIN "InternalEmail" "a_InternalEmail" ON "a_Email"."Id" = "a_InternalEmail"."Id"
				LEFT JOIN "Email" "a_Email_1" ON "a_InternalEmail"."Id" = "a_Email_1"."Id"
		WHERE
			"a_Admin"."Id" = "a_EmailAdminAssociations_1"."AdminId"
	)
FROM
	"Request" "r"
		LEFT JOIN "User" "a_User" ON "r"."UserId" = "a_User"."Id"
		LEFT JOIN "Admin" "a_Admin" ON "a_User"."Id" = "a_Admin"."Id"

