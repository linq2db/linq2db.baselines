BeforeExecute
-- SQLite.MS SQLite
DECLARE @RecordDate  -- DateTime
SET     @RecordDate = '2020-02-28 17:54:55.123'

INSERT INTO [Issue4904Table]
(
	[RecordDate]
)
VALUES
(
	@RecordDate
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @RecordDate  -- DateTime
SET     @RecordDate = '2020-02-29 17:54:55.123'

INSERT INTO [Issue4904Table]
(
	[RecordDate]
)
VALUES
(
	@RecordDate
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @RecordDate  -- DateTime
SET     @RecordDate = '2020-03-01 17:54:55.123'

INSERT INTO [Issue4904Table]
(
	[RecordDate]
)
VALUES
(
	@RecordDate
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[RecordDate]
FROM
	[Issue4904Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[RecordDate]) <= strftime('%Y-%m-%d %H:%M:%f', '9999-12-31 23:59:59.999')

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[r].[RecordDate]
FROM
	[Issue4904Table] [r]
WHERE
	strftime('%Y-%m-%d %H:%M:%f', [r].[RecordDate]) <= strftime('%Y-%m-%d %H:%M:%f', '9999-12-31 23:59:59.998')

