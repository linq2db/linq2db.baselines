(140942) SELECT 
	t140942.Id = t140941.Id
FROM [DctSetpointtype(140941)] as t140941 (spt)
		LEFT JOIN (
			[VWellTree(140944)] as t140944 (t2)
				INNER JOIN [DctOu(140946)] as t140946 (tp2) ON ({t140944.ShopId?}? = {t140946.Id})
				LEFT JOIN [UacUsersDatagroup(140949)] as t140949 (cudg) ON ({t140946.Id} = {t140949.DatagroupId} AND {t140949.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140954)] as t140954 (oudg) ON ({t140946.ParentId?}? = {t140954.DatagroupId} AND {t140954.UserId} = 150 AND {t140954.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140974)] as t140974 (d) ON ({t140944.WellId?}? = {t140974.WellId})
		)  ON ({t140974.SetpointtypeId} = {t140941.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140949.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140954.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
