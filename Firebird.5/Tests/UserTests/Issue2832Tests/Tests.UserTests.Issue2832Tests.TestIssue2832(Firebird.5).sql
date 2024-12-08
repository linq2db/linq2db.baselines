(102952) SELECT 
	t102952.Id = t102951.Id
FROM [DctSetpointtype(102951)] as t102951 (spt)
		LEFT JOIN (
			[VWellTree(102954)] as t102954 (t2)
				INNER JOIN [DctOu(102956)] as t102956 (tp2) ON ({t102954.ShopId?}? = {t102956.Id})
				LEFT JOIN [UacUsersDatagroup(102959)] as t102959 (cudg) ON ({t102956.Id} = {t102959.DatagroupId} AND {t102959.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(102964)] as t102964 (oudg) ON ({t102956.ParentId?}? = {t102964.DatagroupId} AND {t102964.UserId} = 150 AND {t102964.Inheritablepermission} > 0)
				INNER JOIN [Deviation(102984)] as t102984 (d) ON ({t102954.WellId?}? = {t102984.WellId})
		)  ON ({t102984.SetpointtypeId} = {t102951.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t102959.Permission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), CAST(t102964.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "18", "10")), NULL)?}? IS NOT NULL)
