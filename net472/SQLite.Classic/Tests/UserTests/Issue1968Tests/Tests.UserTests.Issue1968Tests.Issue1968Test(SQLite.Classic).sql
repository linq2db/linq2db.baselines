﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [University]
(
	[Id]       INTEGER       NOT NULL,
	[Name]     NVarChar(255)     NULL,
	[Location] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [Faculty]
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
-- SQLite.Classic SQLite

CREATE TABLE [Subject]
(
	[SubjectId]     INTEGER       NOT NULL,
	[FirstSubject]  NVarChar(255)     NULL,
	[SecondSubject] NVarChar(255)     NULL,
	[ThirdSubject]  NVarChar(255)     NULL,
	[FacultyId]     INTEGER           NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Code NVarChar(4) -- String
SET     @Code = 'code'
DECLARE @FacultyName NVarChar(12) -- String
SET     @FacultyName = 'faculty name'
DECLARE @Direction NVarChar(9) -- String
SET     @Direction = 'direction'
DECLARE @Grant_1  -- Int32
SET     @Grant_1 = 1
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
	@Grant_1,
	@Contract,
	@UniversityId
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[lw_University].[Id],
	[detail].[Id],
	[detail].[Code],
	[detail].[FacultyName],
	[detail].[Direction],
	[detail].[Grant],
	[detail].[Contract],
	[detail].[UniversityId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[University] [t1]
	) [lw_University]
		INNER JOIN [Faculty] [detail] ON [lw_University].[Id] = [detail].[UniversityId]

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[lw_University].[Id],
	[lw_University].[Name],
	[lw_University].[Location],
	[x].[SubjectId],
	[x].[FirstSubject],
	[x].[SecondSubject],
	[x].[ThirdSubject],
	[x].[FacultyId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id],
			[t1].[Name],
			[t1].[Location]
		FROM
			[University] [t1]
	) [lw_University]
		INNER JOIN [Subject] [x] ON EXISTS(
			SELECT
				*
			FROM
				[Faculty] [m_1]
			WHERE
				[lw_University].[Id] = [m_1].[UniversityId] AND [m_1].[Id] = [x].[FacultyId]
		)

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Name],
	[t1].[Location]
FROM
	[University] [t1]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Subject]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [Faculty]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [University]

