BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x_1.DuplicateData
FROM
	(
		SELECT
			x.DuplicateData
		FROM
			OrderByDistinctData x
		GROUP BY
			x.DuplicateData
	) x_1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take DISTINCT
	x.DuplicateData
FROM
	OrderByDistinctData x

BeforeExecute
-- Informix.DB2 Informix
DECLARE @skip Integer(4) -- Int32
SET     @skip = 0
DECLARE @take Integer(4) -- Int32
SET     @take = 3

SELECT SKIP @skip FIRST @take
	x_1.DuplicateData
FROM
	(
		SELECT
			x.DuplicateData
		FROM
			OrderByDistinctData x
		GROUP BY
			x.DuplicateData
	) x_1

