(106545) SELECT 
	t106545.Id = t106544.Id
FROM [DctSetpointtype(106544)] as t106544 (spt)
		LEFT JOIN (
			[VWellTree(106547)] as t106547 (t2)
				INNER JOIN [DctOu(106549)] as t106549 (tp2) ON ({t106547.ShopId?}? = {t106549.Id})
				LEFT JOIN [UacUsersDatagroup(106552)] as t106552 (cudg) ON ({t106549.Id} = {t106552.DatagroupId} AND {t106552.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106557)] as t106557 (oudg) ON ({t106549.ParentId?}? = {t106557.DatagroupId} AND {t106557.UserId} = 150 AND {t106557.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106577)] as t106577 (d) ON ({t106547.WellId?}? = {t106577.WellId})
		)  ON ({t106577.SetpointtypeId} = {t106544.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106552.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106557.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
