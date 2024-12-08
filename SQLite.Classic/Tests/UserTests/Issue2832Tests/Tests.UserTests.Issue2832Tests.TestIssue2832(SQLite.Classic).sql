(700940) SELECT 
	t700940.Id = t700939.Id
FROM [DctSetpointtype(700939)] as t700939 (spt)
		LEFT JOIN (
			[VWellTree(700942)] as t700942 (t2)
				INNER JOIN [DctOu(700944)] as t700944 (tp2) ON ({t700942.ShopId?}? = {t700944.Id})
				LEFT JOIN [UacUsersDatagroup(700947)] as t700947 (cudg) ON ({t700944.Id} = {t700947.DatagroupId} AND {t700947.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(700952)] as t700952 (oudg) ON ({t700944.ParentId?}? = {t700952.DatagroupId} AND {t700952.UserId} = 150 AND {t700952.Inheritablepermission} > 0)
				INNER JOIN [Deviation(700972)] as t700972 (d) ON ({t700942.WellId?}? = {t700972.WellId})
		)  ON ({t700972.SetpointtypeId} = {t700939.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t700947.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t700952.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
