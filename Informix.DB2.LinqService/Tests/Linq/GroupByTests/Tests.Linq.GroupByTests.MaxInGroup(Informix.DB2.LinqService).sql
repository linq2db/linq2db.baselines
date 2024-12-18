BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AggregationData

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS AggregationData
(
	GroupId   Int   NOT NULL,
	DataValue Float     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 1

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 3

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 1

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 5

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 1
DECLARE @DataValue Double(8)
SET     @DataValue = 6

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 7

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 8

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 9

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 11

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 2
DECLARE @DataValue Double(8)
SET     @DataValue = 7

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 13

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 16

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double
SET     @DataValue = NULL

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @GroupId Integer(4) -- Int32
SET     @GroupId = 3
DECLARE @DataValue Double(8)
SET     @DataValue = 18

INSERT INTO AggregationData
(
	GroupId,
	DataValue
)
VALUES
(
	@GroupId,
	@DataValue
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	g_1.GroupId,
	MAX(g_1.DataValue),
	MAX(g_1.DataValue),
	MAX(CASE
		WHEN Mod(g_1.DataValue, 2) = 0 AND Mod(g_1.DataValue, 2) IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	MAX(CASE
		WHEN Mod(g_1.DataValue, 2) = 0 AND Mod(g_1.DataValue, 2) IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	MAX(DISTINCT g_1.DataValue),
	MAX(DISTINCT CASE
		WHEN Mod(g_1.DataValue, 2) = 0 AND Mod(g_1.DataValue, 2) IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END),
	MAX(DISTINCT CASE
		WHEN Mod(g_1.DataValue, 2) = 0 AND Mod(g_1.DataValue, 2) IS NOT NULL
			THEN g_1.DataValue
		ELSE NULL
	END)
FROM
	AggregationData g_1
GROUP BY
	g_1.GroupId

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.GroupId,
	t1.DataValue
FROM
	AggregationData t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS AggregationData

