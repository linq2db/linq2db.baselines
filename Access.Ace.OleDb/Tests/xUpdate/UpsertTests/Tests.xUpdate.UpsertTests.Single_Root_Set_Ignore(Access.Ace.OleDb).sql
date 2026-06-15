-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Date -- DateTime
SET     @modified = #2026-02-02 09:00:00#
DECLARE @UpdatedBy VarWChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[UpdatedAt] = @modified,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'root-ins'
DECLARE @Version Integer -- Int32
SET     @Version = 1
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Date -- DateTime
SET     @modified = #2026-02-02 09:00:00#
DECLARE @UpdatedBy VarWChar(12) -- String
SET     @UpdatedBy = 'sys-root-ins'

INSERT INTO [UpsertTest]
(
	[Id],
	[Name],
	[Version],
	[CreatedAt],
	[UpdatedAt],
	[UpdatedBy]
)
VALUES
(
	@Id,
	@Name,
	@Version,
	@CreatedAt,
	@modified,
	@UpdatedBy
)

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]

-- Access.Ace.OleDb AccessOleDb
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'root-upd'
DECLARE @Version Integer -- Int32
SET     @Version = 2
DECLARE @CreatedAt Date -- DateTime
SET     @CreatedAt = NULL
DECLARE @modified Date -- DateTime
SET     @modified = #2026-02-02 09:00:00#
DECLARE @UpdatedBy VarWChar(12) -- String
SET     @UpdatedBy = 'sys-root-upd'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[UpsertTest] [t1]
SET
	[t1].[Name] = @Name,
	[t1].[Version] = @Version,
	[t1].[CreatedAt] = @CreatedAt,
	[t1].[UpdatedAt] = @modified,
	[t1].[UpdatedBy] = @UpdatedBy
WHERE
	[t1].[Id] = @Id

-- Access.Ace.OleDb AccessOleDb

SELECT TOP 2
	[t1].[Id],
	[t1].[Name],
	[t1].[Version],
	[t1].[CreatedAt],
	[t1].[CreatedBy],
	[t1].[UpdatedAt],
	[t1].[UpdatedBy]
FROM
	[UpsertTest] [t1]

