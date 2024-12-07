(239350) SELECT 
	t239350.Id = t239349.Id
FROM [DctSetpointtype(239349)] as t239349 (spt)
		LEFT JOIN (
			[VWellTree(239352)] as t239352 (t2)
				INNER JOIN [DctOu(239354)] as t239354 (tp2) ON ({t239352.ShopId?}? = {t239354.Id})
				LEFT JOIN [UacUsersDatagroup(239357)] as t239357 (cudg) ON ({t239354.Id} = {t239357.DatagroupId} AND {t239357.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(239362)] as t239362 (oudg) ON ({t239354.ParentId?}? = {t239362.DatagroupId} AND {t239362.UserId} = 150 AND {t239362.Inheritablepermission} > 0)
				INNER JOIN [Deviation(239382)] as t239382 (d) ON ({t239352.WellId?}? = {t239382.WellId})
		)  ON ({t239382.SetpointtypeId} = {t239349.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t239357.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t239362.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
