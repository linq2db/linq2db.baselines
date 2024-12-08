(426191) SELECT 
	t426191.Id = t426190.Id
FROM [DctSetpointtype(426190)] as t426190 (spt)
		LEFT JOIN (
			[VWellTree(426193)] as t426193 (t2)
				INNER JOIN [DctOu(426195)] as t426195 (tp2) ON ({t426193.ShopId?}? = {t426195.Id})
				LEFT JOIN [UacUsersDatagroup(426198)] as t426198 (cudg) ON ({t426195.Id} = {t426198.DatagroupId} AND {t426198.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(426203)] as t426203 (oudg) ON ({t426195.ParentId?}? = {t426203.DatagroupId} AND {t426203.UserId} = 150 AND {t426203.Inheritablepermission} > 0)
				INNER JOIN [Deviation(426223)] as t426223 (d) ON ({t426193.WellId?}? = {t426223.WellId})
		)  ON ({t426223.SetpointtypeId} = {t426190.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t426198.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t426203.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
