BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(11) -- String
SET     @Name = 'Grandparent'
DECLARE @ParentId  -- Int32
SET     @ParentId = NULL

INSERT INTO [PeopleForLoadWith]
(
	[Name],
	[ParentId]
)
VALUES
(
	@Name,
	@ParentId
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'Parent'
DECLARE @ParentId  -- Int32
SET     @ParentId = 1

INSERT INTO [PeopleForLoadWith]
(
	[Name],
	[ParentId]
)
VALUES
(
	@Name,
	@ParentId
)

BeforeExecute
-- SQLite.Classic SQLite

SELECT last_insert_rowid()

BeforeExecute
-- SQLite.Classic SQLite
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Child'
DECLARE @ParentId  -- Int32
SET     @ParentId = 2

INSERT INTO [PeopleForLoadWith]
(
	[Name],
	[ParentId]
)
VALUES
(
	@Name,
	@ParentId
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[Id],
	[d_1].[Name],
	[d_1].[ParentId]
FROM
	(
		SELECT DISTINCT
			[d].[Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[Id]
				FROM
					(
						SELECT
							[p].[Id]
						FROM
							[PeopleForLoadWith] [p]
						WHERE
							EXISTS(
								SELECT
									*
								FROM
									[PeopleForLoadWith] [c_1]
								WHERE
									[p].[Id] = [c_1].[ParentId]
							)
						LIMIT 1
					) [t1]
			) [t2]
				INNER JOIN [PeopleForLoadWith] [d] ON [t2].[Id] = [d].[ParentId]
	) [m_1]
		INNER JOIN [PeopleForLoadWith] [d_1] ON [m_1].[Id] = [d_1].[ParentId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Name],
	[d].[ParentId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT
					[p].[Id]
				FROM
					[PeopleForLoadWith] [p]
				WHERE
					EXISTS(
						SELECT
							*
						FROM
							[PeopleForLoadWith] [c_1]
						WHERE
							[p].[Id] = [c_1].[ParentId]
					)
				LIMIT 1
			) [t1]
	) [m_1]
		INNER JOIN [PeopleForLoadWith] [d] ON [m_1].[Id] = [d].[ParentId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[p].[Id],
	[p].[Name],
	[p].[ParentId]
FROM
	[PeopleForLoadWith] [p]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[PeopleForLoadWith] [c_1]
		WHERE
			[p].[Id] = [c_1].[ParentId]
	)
LIMIT 1

BeforeExecute
DisposeTransaction
