BeforeExecute
-- Informix.DB2 Informix

SELECT
	Nvl(t.Nullable1, Nvl(t.Nullable2, Nvl(t.Nullable3, t.Id))),
	Nvl(t.Nullable2, Nvl(t.Nullable1, Nvl(t.Nullable3, t.Id))),
	Nvl(t.Nullable2, Nvl(t.Nullable3, Nvl(t.Nullable1, t.Id))),
	Nvl(t.Nullable3, Nvl(t.Nullable1, Nvl(t.Nullable2, t.Id))),
	Nvl(t.Nullable3, Nvl(t.Nullable2, Nvl(t.Nullable1, t.Id))),
	t.Id,
	Nvl(t.Nullable1, t.Id),
	Nvl(t.Nullable1, Nvl(t.Nullable2, t.Id))
FROM
	CoalesceNullableFields t

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Nullable1,
	t1.Nullable2,
	t1.Nullable3
FROM
	CoalesceNullableFields t1

