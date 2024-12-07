(105946) SELECT 
	t105946.Id = t105945.Id
FROM [DctSetpointtype(105945)] as t105945 (spt)
		LEFT JOIN (
			[VWellTree(105948)] as t105948 (t2)
				INNER JOIN [DctOu(105950)] as t105950 (tp2) ON ({t105948.ShopId?}? = {t105950.Id})
				LEFT JOIN [UacUsersDatagroup(105953)] as t105953 (cudg) ON ({t105950.Id} = {t105953.DatagroupId} AND {t105953.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(105958)] as t105958 (oudg) ON ({t105950.ParentId?}? = {t105958.DatagroupId} AND {t105958.UserId} = 150 AND {t105958.Inheritablepermission} > 0)
				INNER JOIN [Deviation(105978)] as t105978 (d) ON ({t105948.WellId?}? = {t105978.WellId})
		)  ON ({t105978.SetpointtypeId} = {t105945.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t105953.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t105958.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
