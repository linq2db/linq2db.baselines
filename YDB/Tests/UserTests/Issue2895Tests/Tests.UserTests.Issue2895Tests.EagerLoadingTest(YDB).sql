-- YDB Ydb
SELECT
	m_1.Id as Id,
	a_Documents.Name as Name
FROM
	(
		SELECT DISTINCT
			t5.Id as Id
		FROM
			Request r
				LEFT JOIN (
					SELECT
						a_Admin.Id as Id,
						a_User.Id as Id_1
					FROM
						`User` a_User
							LEFT JOIN `Admin` a_Admin ON a_User.Id = a_Admin.Id
				) t1 ON r.UserId = t1.Id_1
				LEFT JOIN (
					SELECT
						t4.Id as Id,
						t4.AdminId as AdminId
					FROM
						(
							SELECT
								t3.Id_1 as Id,
								ROW_NUMBER() OVER (PARTITION BY a_EmailAdminAssociations.AdminId ORDER BY a_EmailAdminAssociations.AdminId) as rn,
								a_EmailAdminAssociations.AdminId as AdminId
							FROM
								EmailAdminAssociation a_EmailAdminAssociations
									LEFT JOIN (
										SELECT
											a_Email_1.Id as Id,
											t2.Id_1 as Id_1
										FROM
											Email a_Email_1
												LEFT JOIN (
													SELECT
														a_InternalEmail.Id as Id,
														a_Email.Id as Id_1
													FROM
														InternalEmail a_InternalEmail
															LEFT JOIN Email a_Email ON a_InternalEmail.Id = a_Email.Id
												) t2 ON a_Email_1.Id = t2.Id
									) t3 ON a_EmailAdminAssociations.EmailId = t3.Id
						) t4
					WHERE
						t4.rn = 1
				) t5 ON t1.Id = t5.AdminId
	) m_1
		INNER JOIN EmailAttachmentAssociation d ON m_1.Id = d.EmailId
		INNER JOIN Attachment a_Attachment ON d.AttachmentId = a_Attachment.Id
		INNER JOIN Document a_Documents ON a_Attachment.Id = a_Documents.AttachmentId

-- YDB Ydb
SELECT
	t5.not_null as not_null,
	t5.Id as Id
FROM
	Request r
		LEFT JOIN (
			SELECT
				a_Admin.Id as Id,
				a_User.Id as Id_1
			FROM
				`User` a_User
					LEFT JOIN `Admin` a_Admin ON a_User.Id = a_Admin.Id
		) t1 ON r.UserId = t1.Id_1
		LEFT JOIN (
			SELECT
				t4.not_null as not_null,
				t4.Id as Id,
				t4.AdminId as AdminId
			FROM
				(
					SELECT
						1 as not_null,
						t3.Id_1 as Id,
						ROW_NUMBER() OVER (PARTITION BY a_EmailAdminAssociations.AdminId ORDER BY a_EmailAdminAssociations.AdminId) as rn,
						a_EmailAdminAssociations.AdminId as AdminId
					FROM
						EmailAdminAssociation a_EmailAdminAssociations
							LEFT JOIN (
								SELECT
									a_Email_1.Id as Id,
									t2.Id_1 as Id_1
								FROM
									Email a_Email_1
										LEFT JOIN (
											SELECT
												a_InternalEmail.Id as Id,
												a_Email.Id as Id_1
											FROM
												InternalEmail a_InternalEmail
													LEFT JOIN Email a_Email ON a_InternalEmail.Id = a_Email.Id
										) t2 ON a_Email_1.Id = t2.Id
							) t3 ON a_EmailAdminAssociations.EmailId = t3.Id
				) t4
			WHERE
				t4.rn = 1
		) t5 ON t1.Id = t5.AdminId

