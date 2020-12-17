﻿BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS StLink
(
	InId          Int   NOT NULL,
	InMaxQuantity Float     NULL,
	InMinQuantity Float     NULL,

	PRIMARY KEY (InId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @InId Integer(4) -- Int32
SET     @InId = 1
DECLARE @InMaxQuantity Double(8)
SET     @InMaxQuantity = 2
DECLARE @InMinQuantity Double(8)
SET     @InMinQuantity = 1

INSERT INTO StLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @InId Integer(4) -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double
SET     @InMaxQuantity = NULL
DECLARE @InMinQuantity Double
SET     @InMinQuantity = NULL

INSERT INTO StLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS EdtLink
(
	InId          Int   NOT NULL,
	InMaxQuantity Float     NULL,
	InMinQuantity Float     NULL,

	PRIMARY KEY (InId)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @InId Integer(4) -- Int32
SET     @InId = 2
DECLARE @InMaxQuantity Double(8)
SET     @InMaxQuantity = 4
DECLARE @InMinQuantity Double(8)
SET     @InMinQuantity = 3

INSERT INTO EdtLink
(
	InId,
	InMaxQuantity,
	InMinQuantity
)
VALUES
(
	@InId,
	@InMaxQuantity,
	@InMinQuantity
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.InId,
	CASE
		WHEN j.InId IS NULL THEN x.InMinQuantity
		ELSE j.InMinQuantity
	END,
	CASE
		WHEN j.InId IS NULL THEN x.InMaxQuantity
		ELSE j.InMaxQuantity
	END
FROM
	StLink x
		LEFT JOIN EdtLink j ON x.InId = j.InId
WHERE
	x.InId = 1

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	x.InId,
	CASE
		WHEN j.InId IS NULL THEN x.InMinQuantity
		ELSE j.InMinQuantity
	END,
	CASE
		WHEN j.InId IS NULL THEN x.InMaxQuantity
		ELSE j.InMaxQuantity
	END
FROM
	StLink x
		LEFT JOIN EdtLink j ON x.InId = j.InId
WHERE
	x.InId = 2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS EdtLink

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS StLink

