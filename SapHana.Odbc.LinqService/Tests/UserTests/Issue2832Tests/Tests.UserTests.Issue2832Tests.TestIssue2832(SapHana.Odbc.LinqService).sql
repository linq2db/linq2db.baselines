(99857) SELECT 
	t99857.Id = t99856.Id
FROM [DctSetpointtype(99856)] as t99856 (spt)
		LEFT JOIN (
			[VWellTree(99859)] as t99859 (t2)
				INNER JOIN [DctOu(99861)] as t99861 (tp2) ON ({t99859.ShopId?}? = {t99861.Id})
				LEFT JOIN [UacUsersDatagroup(99864)] as t99864 (cudg) ON ({t99861.Id} = {t99864.DatagroupId} AND {t99864.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99869)] as t99869 (oudg) ON ({t99861.ParentId?}? = {t99869.DatagroupId} AND {t99869.UserId} = 150 AND {t99869.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99889)] as t99889 (d) ON ({t99859.WellId?}? = {t99889.WellId})
		)  ON ({t99889.SetpointtypeId} = {t99856.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99864.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99869.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
