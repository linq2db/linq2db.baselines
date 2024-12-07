(102150) SELECT 
	t102150.Id = t102149.Id
FROM [DctSetpointtype(102149)] as t102149 (spt)
		LEFT JOIN (
			[VWellTree(102152)] as t102152 (t2)
				INNER JOIN [DctOu(102154)] as t102154 (tp2) ON ({t102152.ShopId?}? = {t102154.Id})
				LEFT JOIN [UacUsersDatagroup(102157)] as t102157 (cudg) ON ({t102154.Id} = {t102157.DatagroupId} AND {t102157.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102162)] as t102162 (oudg) ON ({t102154.ParentId?}? = {t102162.DatagroupId} AND {t102162.UserId} = 150 AND {t102162.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102182)] as t102182 (d) ON ({t102152.WellId?}? = {t102182.WellId})
		)  ON ({t102182.SetpointtypeId} = {t102149.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102157.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102162.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
