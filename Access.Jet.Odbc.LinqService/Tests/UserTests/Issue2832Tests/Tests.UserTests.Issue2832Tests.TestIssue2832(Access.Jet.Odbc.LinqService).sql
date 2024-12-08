(307321) SELECT 
	t307321.Id = t307320.Id
FROM [DctSetpointtype(307320)] as t307320 (spt)
		LEFT JOIN (
			(307357) SELECT 
				t307357.SetpointtypeId = t307353.SetpointtypeId
			FROM [VWellTree(307323)] as t307323 (t2)
					INNER JOIN [DctOu(307325)] as t307325 (tp2) ON ({t307323.ShopId?}? = {t307325.Id})
					LEFT JOIN [UacUsersDatagroup(307328)] as t307328 (cudg) ON ({t307325.Id} = {t307328.DatagroupId} AND {t307328.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307333)] as t307333 (oudg) ON ({t307325.ParentId?}? = {t307333.DatagroupId} AND {t307333.UserId} = 150 AND {t307333.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307353)] as t307353 (d) ON ({t307323.WellId?}? = {t307353.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(CAST(t307328.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t307333.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
		) as t307357 (t2_1) ON ({t307357.SetpointtypeId?} = {t307320.Id})
