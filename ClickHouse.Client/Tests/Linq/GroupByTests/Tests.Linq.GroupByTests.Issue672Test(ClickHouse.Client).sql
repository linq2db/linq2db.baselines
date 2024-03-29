﻿BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Stone

BeforeExecute
-- ClickHouse.Client ClickHouse

CREATE TABLE IF NOT EXISTS Stone
(
	Id           Int32,
	Name         String,
	Enabled      Nullable(Bool),
	ImageFullUrl Nullable(String),

	PRIMARY KEY (Id)
)
ENGINE = MergeTree()
ORDER BY Id

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	'group1',
	true,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	'group1',
	true,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

INSERT INTO Stone
(
	Name,
	Enabled,
	ImageFullUrl
)
VALUES
(
	'group2',
	true,
	'123'
)

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Name
FROM
	Stone s
WHERE
	s.Enabled = true AND (NOT startsWith(s.Name, 'level - ')) AND
	CHAR_LENGTH(s.ImageFullUrl) > toInt32(0)
GROUP BY
	s.Name

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id,
	s.Name,
	s.Enabled,
	s.ImageFullUrl
FROM
	Stone s
WHERE
	s.Enabled = true AND
	(NOT startsWith(s.Name, 'level - ')) AND
	CHAR_LENGTH(s.ImageFullUrl) > toInt32(0) AND
	s.Name = 'group2'

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	s.Id,
	s.Name,
	s.Enabled,
	s.ImageFullUrl
FROM
	Stone s
WHERE
	s.Enabled = true AND
	(NOT startsWith(s.Name, 'level - ')) AND
	CHAR_LENGTH(s.ImageFullUrl) > toInt32(0) AND
	s.Name = 'group1'

BeforeExecute
-- ClickHouse.Client ClickHouse

DROP TABLE IF EXISTS Stone

