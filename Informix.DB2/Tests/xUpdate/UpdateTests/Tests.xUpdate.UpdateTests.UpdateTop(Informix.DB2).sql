﻿BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1000
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1000

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1001

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1002
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1002

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1003
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1003

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1004
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1004

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1005
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1005

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1006
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1006

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1007
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1007

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1008
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1008

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ParentID Integer(4) -- Int32
SET     @ParentID = 1009
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1009

INSERT INTO Parent
(
	ParentID,
	Value1
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- Informix.DB2 Informix

UPDATE
	Parent
SET
	Value1 = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 5
					p.ParentID,
					p.Value1
				FROM
					Parent p
				WHERE
					p.ParentID >= 1000
			) t1
		WHERE
			Parent.ParentID = t1.ParentID AND (Parent.Value1 = t1.Value1 OR Parent.Value1 IS NULL AND t1.Value1 IS NULL)
	)

