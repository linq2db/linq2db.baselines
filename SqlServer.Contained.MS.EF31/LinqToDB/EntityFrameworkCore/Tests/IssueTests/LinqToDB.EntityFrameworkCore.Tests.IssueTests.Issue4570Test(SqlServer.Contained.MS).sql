SELECT CASE
    WHEN EXISTS (
        SELECT 1
        FROM [Parents] AS [p]) THEN CAST(1 AS bit)
    ELSE CAST(0 AS bit)
END


