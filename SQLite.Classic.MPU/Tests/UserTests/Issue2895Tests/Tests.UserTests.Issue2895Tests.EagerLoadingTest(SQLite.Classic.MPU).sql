-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[a_Documents].[Name]
FROM
	(
		SELECT DISTINCT
			(
				SELECT
					[a_Email].[Id]
				FROM
					[EmailAdminAssociation] [a_EmailAdminAssociations]
						LEFT JOIN ([Email] [a_Email_1]
							LEFT JOIN ([InternalEmail] [a_InternalEmail]
								LEFT JOIN [Email] [a_Email] ON [a_InternalEmail].[Id] = [a_Email].[Id])
							ON [a_Email_1].[Id] = [a_InternalEmail].[Id])
						ON [a_EmailAdminAssociations].[EmailId] = [a_Email_1].[Id]
				WHERE
					[a_Admin].[Id] = [a_EmailAdminAssociations].[AdminId]
				LIMIT 1
			) as [Id]
		FROM
			[Request] [r]
				LEFT JOIN ([User] [a_User]
					LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id])
				ON [r].[UserId] = [a_User].[Id]
	) [m_1]
		INNER JOIN [EmailAttachmentAssociation] [d] ON [m_1].[Id] = [d].[EmailId]
		INNER JOIN [Attachment] [a_Attachment] ON [d].[AttachmentId] = [a_Attachment].[Id]
		INNER JOIN [Document] [a_Documents] ON [a_Attachment].[Id] = [a_Documents].[AttachmentId]

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[not_null],
	[t1].[Id]
FROM
	[Request] [r]
		LEFT JOIN ([User] [a_User]
			LEFT JOIN [Admin] [a_Admin] ON [a_User].[Id] = [a_Admin].[Id])
		ON [r].[UserId] = [a_User].[Id]
		LEFT JOIN (
			SELECT
				1 as [not_null],
				[a_Email].[Id],
				ROW_NUMBER() OVER (PARTITION BY [a_EmailAdminAssociations].[AdminId] ORDER BY [a_EmailAdminAssociations].[AdminId]) as [rn],
				[a_EmailAdminAssociations].[AdminId]
			FROM
				[EmailAdminAssociation] [a_EmailAdminAssociations]
					LEFT JOIN ([Email] [a_Email_1]
						LEFT JOIN ([InternalEmail] [a_InternalEmail]
							LEFT JOIN [Email] [a_Email] ON [a_InternalEmail].[Id] = [a_Email].[Id])
						ON [a_Email_1].[Id] = [a_InternalEmail].[Id])
					ON [a_EmailAdminAssociations].[EmailId] = [a_Email_1].[Id]
		) [t1] ON [a_Admin].[Id] = [t1].[AdminId] AND [t1].[rn] = 1

