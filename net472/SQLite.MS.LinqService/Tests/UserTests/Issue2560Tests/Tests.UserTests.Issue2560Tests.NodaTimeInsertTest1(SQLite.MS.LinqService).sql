﻿BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [DataClass]
(
	[Id]    INTEGER  NOT NULL,
	[Value] DateTime NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 0
DECLARE @Value_1  -- DateTime
SET     @Value_1 = '2020-02-29 17:54:55.123'

INSERT INTO [DataClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value_1
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[DataClass] [t1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [DataClass]

