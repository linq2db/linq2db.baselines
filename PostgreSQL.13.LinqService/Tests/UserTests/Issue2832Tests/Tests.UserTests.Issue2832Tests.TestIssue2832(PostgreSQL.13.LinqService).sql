(105985) SELECT 
	t105985.Id = t105984.Id
FROM [DctSetpointtype(105984)] as t105984 (spt)
		LEFT JOIN (
			[VWellTree(105987)] as t105987 (t2)
				INNER JOIN [DctOu(105989)] as t105989 (tp2) ON ({t105987.ShopId?}? = {t105989.Id})
				LEFT JOIN [UacUsersDatagroup(105992)] as t105992 (cudg) ON ({t105989.Id} = {t105992.DatagroupId} AND {t105992.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(105997)] as t105997 (oudg) ON ({t105989.ParentId?}? = {t105997.DatagroupId} AND {t105997.UserId} = 150 AND {t105997.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106017)] as t106017 (d) ON ({t105987.WellId?}? = {t106017.WellId})
		)  ON ({t106017.SetpointtypeId} = {t105984.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t105992.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t105997.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
