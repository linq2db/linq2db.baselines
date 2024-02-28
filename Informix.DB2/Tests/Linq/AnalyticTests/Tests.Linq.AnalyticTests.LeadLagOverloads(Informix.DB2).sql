BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1799Table3

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue1799Table3
(
	ProcessID   Int           NOT NULL,
	ProcessName NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProcessID Integer(4) -- Int32
SET     @ProcessID = 1
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'One'

INSERT INTO Issue1799Table3
(
	ProcessID,
	ProcessName
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProcessID Integer(4) -- Int32
SET     @ProcessID = 2
DECLARE @ProcessName VarChar(3) -- String
SET     @ProcessName = 'Two'

INSERT INTO Issue1799Table3
(
	ProcessID,
	ProcessName
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProcessID Integer(4) -- Int32
SET     @ProcessID = 3
DECLARE @ProcessName VarChar(5) -- String
SET     @ProcessName = 'Three'

INSERT INTO Issue1799Table3
(
	ProcessID,
	ProcessName
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @ProcessID Integer(4) -- Int32
SET     @ProcessID = 4
DECLARE @ProcessName VarChar(4) -- String
SET     @ProcessName = 'Four'

INSERT INTO Issue1799Table3
(
	ProcessID,
	ProcessName
)
VALUES
(
	@ProcessID,
	@ProcessName
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	LEAD(p.ProcessName, 2) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	LEAD(p.ProcessName) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	LAG(p.ProcessName, 2) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix

SELECT
	LAG(p.ProcessName) OVER(ORDER BY p.ProcessID)
FROM
	Issue1799Table3 p

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue1799Table3

