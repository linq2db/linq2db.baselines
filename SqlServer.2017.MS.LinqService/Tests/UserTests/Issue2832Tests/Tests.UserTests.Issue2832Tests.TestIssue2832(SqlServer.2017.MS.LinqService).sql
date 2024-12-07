(244019) SELECT 
	t244019.Id = t244018.Id
FROM [DctSetpointtype(244018)] as t244018 (spt)
		LEFT JOIN (
			[VWellTree(244021)] as t244021 (t2)
				INNER JOIN [DctOu(244023)] as t244023 (tp2) ON ({t244021.ShopId?}? = {t244023.Id})
				LEFT JOIN [UacUsersDatagroup(244026)] as t244026 (cudg) ON ({t244023.Id} = {t244026.DatagroupId} AND {t244026.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(244031)] as t244031 (oudg) ON ({t244023.ParentId?}? = {t244031.DatagroupId} AND {t244031.UserId} = 150 AND {t244031.Inheritablepermission} > 0)
				INNER JOIN [Deviation(244051)] as t244051 (d) ON ({t244021.WellId?}? = {t244051.WellId})
		)  ON ({t244051.SetpointtypeId} = {t244018.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t244026.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t244031.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
