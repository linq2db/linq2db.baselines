(240555) SELECT 
	t240555.Id = t240554.Id
FROM [DctSetpointtype(240554)] as t240554 (spt)
		LEFT JOIN (
			[VWellTree(240557)] as t240557 (t2)
				INNER JOIN [DctOu(240559)] as t240559 (tp2) ON ({t240557.ShopId?}? = {t240559.Id})
				LEFT JOIN [UacUsersDatagroup(240562)] as t240562 (cudg) ON ({t240559.Id} = {t240562.DatagroupId} AND {t240562.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240567)] as t240567 (oudg) ON ({t240559.ParentId?}? = {t240567.DatagroupId} AND {t240567.UserId} = 150 AND {t240567.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240587)] as t240587 (d) ON ({t240557.WellId?}? = {t240587.WellId})
		)  ON ({t240587.SetpointtypeId} = {t240554.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240562.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t240567.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
