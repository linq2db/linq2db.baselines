-- YDB Ydb
SELECT
	m_1.Id as Id,
	a_Documents.Name as Name
FROM
	(
		SELECT DISTINCT
			t2.Id as Id
		FROM
			NestedAssocRequest r
				LEFT JOIN NestedAssocUser a_User ON r.UserId = a_User.Id
				LEFT JOIN NestedAssocAdmin a_Admin ON a_User.Id = a_Admin.Id
				LEFT JOIN (
					SELECT
						t1.Id as Id,
						t1.AdminId as AdminId
					FROM
						(
							SELECT
								a_Email_1.Id as Id,
								ROW_NUMBER() OVER (PARTITION BY a_EmailAdminAssociations.AdminId ORDER BY a_EmailAdminAssociations.AdminId) as rn,
								a_EmailAdminAssociations.AdminId as AdminId
							FROM
								NestedAssocEmailAdmin a_EmailAdminAssociations
									LEFT JOIN NestedAssocEmail a_Email ON a_EmailAdminAssociations.EmailId = a_Email.Id
									LEFT JOIN NestedAssocInternalEmail a_InternalEmail ON a_Email.Id = a_InternalEmail.Id
									LEFT JOIN NestedAssocEmail a_Email_1 ON a_InternalEmail.Id = a_Email_1.Id
						) t1
					WHERE
						t1.rn = 1
				) t2 ON a_Admin.Id = t2.AdminId
	) m_1
		INNER JOIN NestedAssocEmailAttachment d ON m_1.Id = d.EmailId
		INNER JOIN NestedAssocAttachment a_Attachment ON d.AttachmentId = a_Attachment.Id
		INNER JOIN NestedAssocDocument a_Documents ON a_Attachment.Id = a_Documents.AttachmentId

-- YDB Ydb
SELECT
	t2.not_null as not_null,
	t2.Id as Id
FROM
	NestedAssocRequest r
		LEFT JOIN NestedAssocUser a_User ON r.UserId = a_User.Id
		LEFT JOIN NestedAssocAdmin a_Admin ON a_User.Id = a_Admin.Id
		LEFT JOIN (
			SELECT
				t1.not_null as not_null,
				t1.Id as Id,
				t1.AdminId as AdminId
			FROM
				(
					SELECT
						1 as not_null,
						a_Email_1.Id as Id,
						ROW_NUMBER() OVER (PARTITION BY a_EmailAdminAssociations.AdminId ORDER BY a_EmailAdminAssociations.AdminId) as rn,
						a_EmailAdminAssociations.AdminId as AdminId
					FROM
						NestedAssocEmailAdmin a_EmailAdminAssociations
							LEFT JOIN NestedAssocEmail a_Email ON a_EmailAdminAssociations.EmailId = a_Email.Id
							LEFT JOIN NestedAssocInternalEmail a_InternalEmail ON a_Email.Id = a_InternalEmail.Id
							LEFT JOIN NestedAssocEmail a_Email_1 ON a_InternalEmail.Id = a_Email_1.Id
				) t1
			WHERE
				t1.rn = 1
		) t2 ON a_Admin.Id = t2.AdminId

