(102193) SELECT 
	t102193.Id = t102192.Id
FROM [DctSetpointtype(102192)] as t102192 (spt)
		LEFT JOIN (
			[VWellTree(102195)] as t102195 (t2)
				INNER JOIN [DctOu(102197)] as t102197 (tp2) ON ({t102195.ShopId?}? = {t102197.Id})
				LEFT JOIN [UacUsersDatagroup(102200)] as t102200 (cudg) ON ({t102197.Id} = {t102200.DatagroupId} AND {t102200.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102205)] as t102205 (oudg) ON ({t102197.ParentId?}? = {t102205.DatagroupId} AND {t102205.UserId} = 150 AND {t102205.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102225)] as t102225 (d) ON ({t102195.WellId?}? = {t102225.WellId})
		)  ON ({t102225.SetpointtypeId} = {t102192.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102200.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102205.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
