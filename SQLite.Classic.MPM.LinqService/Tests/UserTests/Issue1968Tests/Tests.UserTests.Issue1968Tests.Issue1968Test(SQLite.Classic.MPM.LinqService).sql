BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)
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
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

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
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

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
				[m_2].[Id] = [m_1].[UniversityId] AND [m_1].[Id] = [d].[FacultyId]
		)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Location]
FROM
	[University] [t1]

