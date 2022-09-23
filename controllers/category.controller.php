<?php class CategoryController extends DatabaseController
{
    public function affectDataToRow(&$row, $sub_rows)
    { // Cette méthode permet d’ajouter les propriétés appuser, theme, image, comment, tag dans l’objet article.

        // Product 
        // if (isset($sub_rows['appuser'])) {
        //     $appusers = array_values(array_filter($sub_rows['appuser'], function ($item) use ($row) {
        //         return $item->Id_appUser == $row->Id_appUser;
        //     }));
        //     if (isset($appusers)) { // Récupère un seul objet (getMany)
        //         $row->appuser = count($appusers) == 1 ? array_shift($appusers) : null;
        //     }
        // }

        // // Themes
        // if (isset($sub_rows['theme'])) {
        //     $themes = array_values(array_filter($sub_rows['theme'], function ($item) use ($row) {
        //         return $item->Id_theme == $row->Id_theme;
        //     }));
        //     if (isset($themes)) { // Récupère un seul objet (getMany)
        //         $row->theme = count($themes) == 1 ? array_shift($themes) : null;
        //     }
        // }

        // Product
        if (isset($sub_rows['category_product'])) {
            $products = array_values(array_filter($sub_rows['category_product'], function ($item) use ($row) {
                return $item->id_category == $row->id_category;
            }));
            if (isset($products)) { // Récupère plusieurs objets (getAll)
                $row->product = $products;
            }
        }


    }
}
