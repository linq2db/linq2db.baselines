﻿BeforeExecute
-- Informix.DB2 Informix

MERGE INTO ReviewIndexes Target
USING (
	SELECT 1::Int AS Id FROM table(set{1})) Source
(
	Id
)
ON (Target.Id = Source.Id)
WHEN MATCHED THEN DELETE

