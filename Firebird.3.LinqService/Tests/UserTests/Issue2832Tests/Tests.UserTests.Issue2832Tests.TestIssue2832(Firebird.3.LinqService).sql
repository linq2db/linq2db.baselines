(159484) SELECT 
	t159484.Id = t159483.Id
FROM [DctSetpointtype(159483)] as t159483 (spt)
		LEFT JOIN (
			[VWellTree(159486)] as t159486 (t2)
				INNER JOIN [DctOu(159488)] as t159488 (tp2) ON ({t159486.ShopId?}? = {t159488.Id})
				LEFT JOIN [UacUsersDatagroup(159491)] as t159491 (cudg) ON ({t159488.Id} = {t159491.DatagroupId} AND {t159491.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(159496)] as t159496 (oudg) ON ({t159488.ParentId?}? = {t159496.DatagroupId} AND {t159496.UserId} = 150 AND {t159496.Inheritablepermission} > 0)
				INNER JOIN [Deviation(159516)] as t159516 (d) ON ({t159486.WellId?}? = {t159516.WellId})
		)  ON ({t159516.SetpointtypeId} = {t159483.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t159491.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t159496.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
