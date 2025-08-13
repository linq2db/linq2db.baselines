BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	x.Id,
	x.QuestionSetId,
	x.Question,
	x.FileName,
	x.FileSize,
	x.ContentType
FROM
	Attachment x
WHERE
	x.Id = toInt64(1)
LIMIT 1

