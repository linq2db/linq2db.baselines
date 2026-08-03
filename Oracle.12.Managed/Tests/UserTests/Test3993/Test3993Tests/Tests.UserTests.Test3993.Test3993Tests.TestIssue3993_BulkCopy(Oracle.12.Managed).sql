-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @:p1 IntervalDS -- Object
SET     @:p1 = 83.08:04:03
DECLARE @:p2 IntervalDS -- Object
SET     @:p2 = 83.08:04:03

INSERT ALL
	INTO "Common_Language" ("LanguageID", "TimeSpan", "TimeSpanNull") VALUES ('en',:p1,:p2)
SELECT * FROM dual

