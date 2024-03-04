BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [University]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [University]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[Location] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Faculty]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Faculty]
(
	[Id]           INTEGER       NOT NULL,
	[Code]         NVarChar(255)     NULL,
	[FacultyName]  NVarChar(255)     NULL,
	[Direction]    NVarChar(255)     NULL,
	[Grant]        INTEGER       NOT NULL,
	[Contract]     INTEGER       NOT NULL,
	[UniversityId] INTEGER           NULL
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Subject]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [Subject]
(
	[SubjectId]     INTEGER       NOT NULL,
	[FirstSubject]  NVarChar(255)     NULL,
	[SecondSubject] NVarChar(255)     NULL,
	[ThirdSubject]  NVarChar(255)     NULL,
	[FacultyId]     INTEGER           NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'name'
DECLARE @Location NVarChar(8) -- String
SET     @Location = 'location'

INSERT INTO [University]
(
	[Id],
	[Name],
	[Location]
)
VALUES
(
	@Id,
	@Name,
	@Location
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'code'
DECLARE @FacultyName NVarChar(12) -- String
SET     @FacultyName = 'faculty name'
DECLARE @Direction NVarChar(9) -- String
SET     @Direction = 'direction'
DECLARE @Grant  -- Int32
SET     @Grant = 1
DECLARE @Contract  -- Int32
SET     @Contract = 1
DECLARE @UniversityId  -- Int32
SET     @UniversityId = 1

INSERT INTO [Faculty]
(
	[Id],
	[Code],
	[FacultyName],
	[Direction],
	[Grant],
	[Contract],
	[UniversityId]
)
VALUES
(
	@Id,
	@Code,
	@FacultyName,
	@Direction,
	@Grant,
	@Contract,
	@UniversityId
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @SubjectId  -- Int32
SET     @SubjectId = 1
DECLARE @FirstSubject NVarChar(5) -- String
SET     @FirstSubject = 'first'
DECLARE @SecondSubject NVarChar(6) -- String
SET     @SecondSubject = 'second'
DECLARE @ThirdSubject NVarChar(5) -- String
SET     @ThirdSubject = 'third'
DECLARE @FacultyId  -- Int32
SET     @FacultyId = 1

INSERT INTO [Subject]
(
	[SubjectId],
	[FirstSubject],
	[SecondSubject],
	[ThirdSubject],
	[FacultyId]
)
VALUES
(
	@SubjectId,
	@FirstSubject,
	@SecondSubject,
	@ThirdSubject,
	@FacultyId
)

BeforeExecute
BeginTransaction(Serializable)
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Code],
	[d].[FacultyName],
	[d].[Direction],
	[d].[Grant],
	[d].[Contract],
	[d].[UniversityId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[University] [t1]
	) [m_1]
		INNER JOIN [Faculty] [d] ON [m_1].[Id] = [d].[UniversityId]

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[m_2].[Id],
	[d].[SubjectId],
	[d].[FirstSubject],
	[d].[SecondSubject],
	[d].[ThirdSubject],
	[d].[FacultyId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[University] [t1]
	) [m_2]
		INNER JOIN [Subject] [d] ON EXISTS(
			SELECT
				*
			FROM
				[Faculty] [m_1]
			WHERE
				[m_1].[Id] = [d].[FacultyId] AND [m_2].[Id] = [m_1].[UniversityId]
		)

BeforeExecute
DisposeTransaction
BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Location]
FROM
	[University] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Subject]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [Faculty]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [University]

