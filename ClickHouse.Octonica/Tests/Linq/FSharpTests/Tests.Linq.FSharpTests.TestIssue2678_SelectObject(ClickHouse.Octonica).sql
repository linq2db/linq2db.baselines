﻿BeforeExecute
-- ClickHouse.Octonica ClickHouse

INSERT INTO R
(
	MetadataVersion,
	DictionaryKey
)
VALUES
(
	2,
	5
)

BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.MetadataVersion,
	t1.DictionaryKey
FROM
	R t1
LIMIT 2

