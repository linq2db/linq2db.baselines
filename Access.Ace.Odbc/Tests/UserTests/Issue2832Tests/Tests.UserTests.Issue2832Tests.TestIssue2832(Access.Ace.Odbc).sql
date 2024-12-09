(307183) SELECT 
	t307183.Id = t307182.Id
FROM [DctSetpointtype(307182)] as t307182 (spt)
		LEFT JOIN (
			(307219) SELECT 
				t307219.SetpointtypeId = t307215.SetpointtypeId
			FROM [VWellTree(307185)] as t307185 (t2)
					INNER JOIN [DctOu(307187)] as t307187 (tp2) ON ({t307185.ShopId?}? = {t307187.Id})
					LEFT JOIN [UacUsersDatagroup(307190)] as t307190 (cudg) ON ({t307187.Id} = {t307190.DatagroupId} AND {t307190.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307195)] as t307195 (oudg) ON ({t307187.ParentId?}? = {t307195.DatagroupId} AND {t307195.UserId} = 150 AND {t307195.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307215)] as t307215 (d) ON ({t307185.WellId?}? = {t307215.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307190.Permission, t307195.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307219 (t2_1) ON ({t307219.SetpointtypeId?} = {t307182.Id})
