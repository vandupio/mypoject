-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 05:41 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(225) NOT NULL,
  `catDiscription` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `catDiscription`) VALUES
(1, 'Breakfast ', ''),
(2, 'Lunch', ''),
(3, 'Dinner', ''),
(4, 'Supper ', ''),
(5, 'Snacks', ''),
(6, 'Movie Snacks', ''),
(7, 'Any time', ''),
(8, 'Brunch', ''),
(11, 'Drinking', '');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feeds`
--

CREATE TABLE `feeds` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `picid` int(11) DEFAULT NULL,
  `catid` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feeds`
--

INSERT INTO `feeds` (`id`, `title`, `article`, `picid`, `catid`, `created_at`, `updated_at`) VALUES
(1, 'Chicken Halang-halang Recipe', '<p>You will not have a hard time cooking Chicken Halang-halang because this is really a simple dish. Start by heating the cooking oil in a cooking pot &mdash; I use canola oil most of the time. Once the oil gets hot, it is time to saute our three commonly used ingredients: garlic, onion, and ginger.</p>\r\n\r\n<p>You will know that the chicken is ready to be added once the onion starts to soften. Gently add the chicken pieces and then continue to cook one side until it turns brown. You can use tongs to check on these. Turn the chicken over to cook the other side and then pour the coconut milk. Let it boil and add the lemongrass, papaya, and chili. At this point, cover the cooking pot and set your heat to medium. We will need to cook the chicken further while extracting the flavor from the papaya and lemongrass.</p>\r\n\r\n<p>Once the chicken is done, add ground black pepper, fish sauce (you may use salt as an alternative), and more chili, if preferred. Lastly, put the hot pepper leaves in. You can use malunggay leaves or even spinach as alternative ingredients.</p>\r\n\r\n<h2>Chicken Halang-halang Recipe</h2>\r\n\r\n<p>&nbsp;Prep Time10&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Cook Time45&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Total Time55&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Servings<a href=\"https://panlasangpinoy.com/chicken-halang-halang-recipe/#\">4</a></p>\r\n\r\n<p>&nbsp;AuthorVanjo Merano</p>\r\n\r\n<h3>Ingredients</h3>\r\n\r\n<ul>\r\n	<li>2&nbsp;lbs.&nbsp;chicken&nbsp;cut into serving pieces</li>\r\n	<li>1&nbsp;can&nbsp;2 cups coconut milk</li>\r\n	<li>1&nbsp;medium yellow onion&nbsp;diced</li>\r\n	<li>1&nbsp;teaspoon&nbsp;minced garlic</li>\r\n	<li>1&nbsp;thumb ginger&nbsp;julienne</li>\r\n	<li>2&nbsp;teaspoons&nbsp;chili flakes</li>\r\n	<li>6 to 8&nbsp;lemongrass blades</li>\r\n	<li>1&nbsp;small green papaya&nbsp;wedged</li>\r\n	<li>3/4 to 1&nbsp;cup&nbsp;hot pepper leaves&nbsp;or malunggay</li>\r\n	<li>2&nbsp;tablespoons&nbsp;fish sauce</li>\r\n	<li>1/4&nbsp;teaspoon&nbsp;ground black pepper</li>\r\n	<li>3&nbsp;tablespoons&nbsp;cooking oil</li>\r\n</ul>\r\n\r\n<p>ADVERTISEMENT</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Instructions</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Heat the oil in a cooking pot.</p>\r\n	</li>\r\n	<li>\r\n	<p>When the oil gets hot, saute the onion, garlic, and ginger until the onion becomes soft.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add the chicken pieces. Cook until light to medium brown. Turn over to cook the other side.</p>\r\n	</li>\r\n	<li>\r\n	<p>Pour-in coconut milk. Let boil. Add chili flakes, lemongrass, and papaya. stir. Cover and the heat to medium. Cook for 18 to 20 minutes or until the chicken is fully cooked.</p>\r\n	</li>\r\n	<li>\r\n	<p>Remove the cover. Add ground black pepper, fish sauce, and more chili flakes (if desired).</p>\r\n	</li>\r\n	<li>\r\n	<p>Add the hot pepper leaves. Stir and cook for 2 minutes.</p>\r\n	</li>\r\n	<li>\r\n	<p>Transfer to a serving plate. Serve.</p>\r\n	</li>\r\n	<li>\r\n	<p>Share and enjoy!</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Nutrition</h3>\r\n\r\n<p>Serving:&nbsp;4g</p>\r\n\r\n<p>Try this Chicken Halang-halang Recipe. Let me know what you think.</p>', 1, 7, '2021-01-20 22:54:20', '2021-01-21 06:15:14'),
(2, 'SISIG RECIPE USING PORK BELLY', '<h2>WHAT IS SISIG?</h2>\r\n\r\n<p>Sisig is probably the most famous Kapampangan dish in the Philippines that is also gaining a lot of attention worldwide.&nbsp; You would easily&nbsp;find it in the menus of&nbsp;most restaurants, bars, or even common small food stalls called, Carinderias.</p>\r\n\r\n<p>The Sisig that most people know is a modern-day version of what it was in earlier years. The Kapampangan word &#39;sisig&#39; actually means to snack on something sour (normally unripe fruit in vinegar dressing).&nbsp; It was originally a very sour dish because of all the vinegar and/or calamansi juice in it. It was not until later that pork or other meat was used.</p>\r\n\r\n<p>Sisig was re-invented and became what it is today, thanks to the ingenious thinking of Lucia Cunanan a.k.a.&quot;Aling Lucing&quot; who served it in her carinderia in Angeles City. She thought of a way to make use of the pigs&#39; heads that would rather be thrown away by the commissaries who prepared the meals for the American troops when they occupied the Clark Airbase. It became quite popular as &quot;pulutan&quot; or beer-food in this late-night joint. Later on, the idea of serving it on a sizzling plate was introduced by a rival,&nbsp;Benedicto Pamintuan. Not one to be left behind, Aling Lucing also started to serve her sisig in the same manner.</p>\r\n\r\n<p>n Pampanga, it is also common to eat it as a viand, to be eaten with rice. But as a &quot;pulutan&#39; it is normally served on a sizzling plate and in other areas topped with raw egg. This, however, is not a norm in Pampanga and definitely no mayonnaise.</p>\r\n\r\n<p>There are also several variations&nbsp;of the original pork sisig these days, like chicken sisig, tuna sisig, and squid sisig to name some.&nbsp;&nbsp;I have tried different kinds of Sisig from all over the country. The one from Pampanga, with or without the sizzling plate, plain and simple without all the extra trimming,&nbsp; is still the best in my humble opinion. I don&#39;t say that because I am from Pampanga, but it is just a known fact.</p>\r\n\r\n<h2>HOW TO MAKE AUTHENTIC YET EASY PORK SISIG?</h2>\r\n\r\n<p>The process of making the popular present-day Kapampangan Sisig involves boiling and then grilling the meat. It is then chopped into fine bits&nbsp;and the rest of ingredients are added. Grilled chicken liver is also added for flavor and creaminess.</p>\r\n\r\n<p>This is not as saucy like the ones they make restaurants, nor does it contain mayonnaise and the ingredients are so much more simple.</p>\r\n\r\n<p>To make it more authentic, you can use pig mask and ears. But I chose to use pork belly for this recipe. That way, Armin can also eat it. It also tastes very similar but not as fatty. I skipped the boiling part and just marinated the belly before grilling.&nbsp;You don&#39;t want to overcook the meat by cooking it 3 times (boiling, grilling, pan-frying, or sizzling) to avoid it from getting dry unlike when you are using pig&#39;s head which has more fats in it that&nbsp;can withstand long and various stages of cooking.</p>', 2, 3, '2021-01-20 22:56:36', '2021-01-21 06:18:29'),
(5, 'Beef Stir Fry Recipe', '<p>&nbsp;</p>\r\n\r\n<h2>How to cook beef stir fry</h2>\r\n\r\n<p>Beef Stir Fry</p>\r\n\r\n<p>Quick and easy beef tenderloin stir fry with bell peppers.</p>\r\n\r\n<p>&nbsp;CourseMain Course</p>\r\n\r\n<p>&nbsp;CuisineChinese</p>\r\n\r\n<p>&nbsp;Keywordbeef stir fry, stir fried beef</p>\r\n\r\n<p>&nbsp;Prep Time5&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Cook Time9&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Servings<a href=\"https://panlasangpinoy.com/stir-fried-beef/#\">4</a>&nbsp;people</p>\r\n\r\n<p>&nbsp;Calories593kcal</p>\r\n\r\n<p>&nbsp;AuthorVanjo Merano</p>\r\n\r\n<h3>Ingredients</h3>\r\n\r\n<ul>\r\n	<li>1&nbsp;lb.&nbsp;beef tenderloin&nbsp;thinly sliced</li>\r\n	<li>3&nbsp;tablespoons&nbsp;oyster sauce</li>\r\n	<li>1&nbsp;teaspoon&nbsp;soy sauce</li>\r\n	<li>1 &frac12;&nbsp;tablespoons&nbsp;cornstarch</li>\r\n	<li>1/2&nbsp;teaspoon&nbsp;ground black pepper</li>\r\n	<li>1-&nbsp;piece&nbsp;green bell pepper&nbsp;sliced into thick strips</li>\r\n	<li>1-&nbsp;piece&nbsp;red bell pepper&nbsp;sliced into thick strips</li>\r\n	<li>1/2&nbsp;cup&nbsp;cooking oil</li>\r\n</ul>\r\n\r\n<h3>Instructions</h3>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Combine beef, oyster sauce, soy sauce, and ground black pepper. Mix well. Let it stand for 5 minutes.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add cornstarch into the bowl. Mix until all ingredients are well distributed. Set aside.</p>\r\n	</li>\r\n	<li>\r\n	<p>Heat oil in a pan. Fry bell peppers for 1 minute. Stir once in a while. Remove bell peppers from the pan. Set aside.</p>\r\n	</li>\r\n	<li>\r\n	<p>Using the remaining oil, stir fry marinated beef until it starts to brown.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add fried bell peppers and toss until all ingredients are distributed.</p>\r\n	</li>\r\n	<li>\r\n	<p>Transfer beef stir fry to a serving plate.</p>\r\n	</li>\r\n	<li>\r\n	<p>Serve with rice. Share and Enjoy!</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Nutrition</h3>\r\n\r\n<p>Calories:&nbsp;593kcal&nbsp;|&nbsp;Carbohydrates:&nbsp;8g&nbsp;|&nbsp;Protein:&nbsp;22g&nbsp;|&nbsp;Fat:&nbsp;53g&nbsp;|&nbsp;Saturated Fat:&nbsp;12g&nbsp;|&nbsp;Cholesterol:&nbsp;79mg&nbsp;|&nbsp;Sodium:&nbsp;511mg&nbsp;|&nbsp;Potassium:&nbsp;460mg&nbsp;|&nbsp;Fiber:&nbsp;1g&nbsp;|&nbsp;Sugar:&nbsp;2g&nbsp;|&nbsp;Vitamin A:&nbsp;1042IU&nbsp;|&nbsp;Vitamin C:&nbsp;62mg&nbsp;|&nbsp;Calcium:&nbsp;15mg&nbsp;|&nbsp;Iron:&nbsp;3mg</p>\r\n\r\n<p><img alt=\"beef stir fry\" src=\"https://panlasangpinoy.com/wp-content/uploads/2009/05/beef-stir-fry-recipe.jpg\" style=\"height:1092px; width:728px\" /></p>', 5, 11, '2021-01-21 06:51:47', '2021-01-21 06:53:51'),
(6, 'Puto Pao', '<p>Puto Pao is a type of special&nbsp;<a href=\"https://panlasangpinoy.com/butter-puto/\">puto</a>&nbsp;with meat filling. I made it extra special by topping it with salted egg. This is easy to make. Your family will love it.</p>\r\n\r\n<h2>How to Make</h2>\r\n\r\n<p>It is easy and fun to make puto pao at home. You can have this as a snack, or make profit out of it. The choice is yours.</p>\r\n\r\n<p>Start making one by preparing the asado filling. We are literally making sweet pork asado. I do this by saut&eacute;ing onion until tender. The next step is adding sliced pork pieces. I am using pork shoulder (kasim) for this recipe. Cook the pork while stirring until it turns light brown. Season it with soy sauce and add water.</p>\r\n\r\n<p>This needs to boil until tender. The minute that the water boils, star anise is added. This ingredient gives the dish additional flavor and fragrance. Continue cooking on a covered pot for 30 to 35 minutes in low heat.</p>\r\n\r\n<p>Once the pork gets tender, you can remove the star anise and add brown sugar. I season it with ground black pepper and Knorr Liquid Seasoning.</p>\r\n\r\n<p>Make the sauce thicker by pouring slurry into the pot. Simply combine cornstarch with 3 to 4 tablespoons water and then pour the mixture. Continue cooking until the mixture gets thick. You now have your filling ready.</p>\r\n\r\n<p>Let&rsquo;s start making the batter. This is quick and easy as well. Combine all the dry ingredients in a large bowl. This includes all the flour, sugar, and baking powder. Mix it using a wire whisk.</p>\r\n\r\n<p>Add the wet ingredients next. Crack a piece of egg into the bowl and then pour milk, water, and melted butter. Mix until the mixture becomes smooth. That&rsquo;s it! We are now ready to assemble the puto pao and steam it.</p>\r\n\r\n<p>Steaming is the preferred way of cooking this dish. If you are using a regular steamer, make sure to start boiling water while assembling the puto.</p>\r\n\r\n<p>Grab a piece of mold and then pour one tablespoon of batter. Scoop around 1 to 1 1/2 teaspoons of pork asado and put it into the mold. Cover with puto batter until the mold is around three quarters full.</p>\r\n\r\n<p>I like having this with sliced salted egg on top.&nbsp; So, I prepare it before steaming. Slice egg into half and then separate it from the shell using a spoon. Slice it into thin pieces afterwards. Watching the video below will help because I showed the exact way on how it is done.</p>\r\n\r\n<p>This steams for 15 minutes. However, since it needs to be topped with salted egg, you have to be aware of the timing. After 2 to 3 minutes of steaming, top it with sliced egg. Continue steaming until it reaches the 15 minute mark.</p>\r\n\r\n<p>Serve this as a snack. It also makes a good breakfast as far as I am concerned. I usually keep it in the fridge for at least 5 days. I can always heat it in the microwave oven when I want one, or two for that matter.</p>\r\n\r\n<p>Try this Puto Pao Recipe, let me know what you think.</p>\r\n\r\n<p>Asado filling</p>\r\n\r\n<ul>\r\n	<li>1&nbsp;lb.&nbsp;pork&nbsp;sliced into small pieces</li>\r\n	<li>1&nbsp;teaspoon&nbsp;Knorr Liquid Seasoning</li>\r\n	<li>1&nbsp;piece&nbsp;onion&nbsp;minced</li>\r\n	<li>3&nbsp;tablespoons&nbsp;soy sauce</li>\r\n	<li>2&nbsp;pieces&nbsp;star anise</li>\r\n	<li>1/4&nbsp;cup&nbsp;brown sugar</li>\r\n	<li>3&nbsp;tablespoons&nbsp;cooking oil</li>\r\n	<li>2&nbsp;teaspoons&nbsp;cornstarch</li>\r\n	<li>Ground black pepper to taste</li>\r\n</ul>\r\n\r\n<p>Puto batter</p>\r\n\r\n<ul>\r\n	<li>1&nbsp;cup&nbsp;water</li>\r\n	<li>2&nbsp;cups&nbsp;all-purpose flour</li>\r\n	<li>2&nbsp;cups&nbsp;cake flour</li>\r\n	<li>2 1/2&nbsp;tablespoons&nbsp;baking powder</li>\r\n	<li>1 1/2&nbsp;cups&nbsp;sugar</li>\r\n	<li>1/2&nbsp;cup&nbsp;butter&nbsp;melted</li>\r\n	<li>1&nbsp;piece&nbsp;egg</li>\r\n	<li>1&nbsp;cup&nbsp;evaporated milk</li>\r\n	<li>2&nbsp;cups&nbsp;water</li>\r\n</ul>\r\n\r\n<p><a href=\"https://panlasangpinoy.com/puto-pao/#\">US Customary</a>&nbsp;-&nbsp;<a href=\"https://panlasangpinoy.com/puto-pao/#\">Metric</a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Nutrition</h3>\r\n\r\n<p>Calories:&nbsp;6085kcal&nbsp;|&nbsp;Carbohydrates:&nbsp;781g&nbsp;|&nbsp;Protein:&nbsp;164g&nbsp;|&nbsp;Fat:&nbsp;261g&nbsp;|&nbsp;Saturated Fat:&nbsp;111g&nbsp;|&nbsp;Cholesterol:&nbsp;809mg&nbsp;|&nbsp;Sodium:&nbsp;4845mg&nbsp;|&nbsp;Potassium:&nbsp;6034mg&nbsp;|&nbsp;Fiber:&nbsp;16g&nbsp;|&nbsp;Sugar:&nbsp;386g&nbsp;|&nbsp;Vitamin A:&nbsp;3686IU&nbsp;|&nbsp;Vitamin C:&nbsp;16mg&nbsp;|&nbsp;Calcium:&nbsp;2267mg&nbsp;|&nbsp;Iron:&nbsp;24mg</p>', 6, 5, '2021-01-21 11:09:55', '2021-01-21 11:09:55'),
(7, 'Easy Kung Pao Shrimp Recipe', '<p>This recipe makes it easier and faster to cook kung pao shrimp at home. Instead of making one from scratch, I used store-bough kung pao sauce. In case you want to make the sauce from scratch, refer to the&nbsp;previous recipe.</p>\r\n\r\n<p>You might also like to try my other kung pao recipes:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>How to Cook Kung Pao Shrimp</h2>\r\n\r\n<p>Start by saut&eacute;ing ginger and garlic. Do this by heating oil on a pan. Add the ginger first, followed by the garlic.&nbsp; Quickly stir-in dried chili pepper and peanuts. These cooks for a good one minute.</p>\r\n\r\n<p>Add onion and zucchini. Stir fry for 1 minute, and then add bell pepper. You can use any color of bell pepper. I utilized red for this particular recipe.</p>\r\n\r\n<p>Add the shrimp next. Continue to stir-fry for 2 minutes or until shrimp turns orange. You can pour the sauce afterwards.&nbsp;I got the kung pao sauce from my local grocery store. This might not be always available in your local supermarkets, so that mean you have to make one from scratch if this happens (see link above for details).</p>\r\n\r\n<p>Finish this off by adding the scallions and seasonings. I love having this with&nbsp;Yang Chow Fried rice.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Try this Easy Kung Pao Shrimp Recipe. Let me know what you think.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Easy Kung Pao Shrimp Recipe</h2>\r\n\r\n<p>&nbsp;CourseMain Course</p>\r\n\r\n<p>&nbsp;CuisineChinese</p>\r\n\r\n<p>&nbsp;Keywordkung pao shrimp, shrimp recipe</p>\r\n\r\n<p>&nbsp;Prep Time5&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Cook Time15&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Total Time20&nbsp;minutes</p>\r\n\r\n<p>&nbsp;Servings<a href=\"https://panlasangpinoy.com/easy-kung-pao-shrimp-recipe-2/#\">3</a></p>\r\n\r\n<p>&nbsp;Calories520kcal</p>\r\n\r\n<p>&nbsp;AuthorVanjo Merano</p>\r\n\r\n<h3>Ingredients</h3>\r\n\r\n<ul>\r\n	<li>1&nbsp;lb.&nbsp;large shrimp&nbsp;head and shell removed</li>\r\n	<li>1&nbsp;piece&nbsp;bell pepper&nbsp;chopped</li>\r\n	<li>1&nbsp;piece&nbsp;onion&nbsp;chopped</li>\r\n	<li>1/2&nbsp;cup&nbsp;scallions&nbsp;chopped</li>\r\n	<li>1/4&nbsp;cup&nbsp;peanuts</li>\r\n	<li>3/4&nbsp;cup&nbsp;kung pao sauce</li>\r\n	<li>1&nbsp;piece&nbsp;zucchini&nbsp;diced</li>\r\n	<li>5&nbsp;pieces&nbsp;dried red chili</li>\r\n	<li>1&nbsp;thumb&nbsp;ginger&nbsp;minced</li>\r\n	<li>1&nbsp;tablespoon&nbsp;garlic&nbsp;minced</li>\r\n	<li>3&nbsp;tablespoons&nbsp;cooking oil</li>\r\n	<li>Salt and pepper to taste.</li>\r\n</ul>\r\n\r\n<p><a href=\"https://panlasangpinoy.com/easy-kung-pao-shrimp-recipe-2/#\">US Customary</a>&nbsp;-&nbsp;<a href=\"https://panlasangpinoy.com/easy-kung-pao-shrimp-recipe-2/#\">Metric</a></p>\r\n\r\n<p>Instructions</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Heat a pan or wok then pour the cooking oil.</p>\r\n	</li>\r\n	<li>\r\n	<p>Once the cooking oil gets hot, quickly saute the ginger and garlic. Do this fast to prevent the spices from getting burnt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Put-in the dried chili and peanuts. Stir fry for 1 minute.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add the onion and zucchini. Cook for 1 minute.</p>\r\n	</li>\r\n	<li>\r\n	<p>Put-in the bell peppers. Stir-fry for 2 minutes.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add the shrimp. Continue to stir-fry for 2 to 5 minutes. do not overcook the shrimp</p>\r\n	</li>\r\n	<li>\r\n	<p>Pour-in the kung pao sauce. Stir and cook for 1 minute.</p>\r\n	</li>\r\n	<li>\r\n	<p>Add the scallions. Sprinkle salt and pepper, if needed. Try to taste your dish at this point to see if you will need to add salt and pepper.</p>\r\n	</li>\r\n	<li>\r\n	<p>Stir and transfer to a serving plate.</p>\r\n	</li>\r\n	<li>\r\n	<p>Share and enjoy!</p>\r\n	</li>\r\n</ul>\r\n\r\n<h3>Nutrition</h3>\r\n\r\n<p>Serving:&nbsp;3g&nbsp;|&nbsp;Calories:&nbsp;520kcal&nbsp;|&nbsp;Carbohydrates:&nbsp;42g&nbsp;|&nbsp;Protein:&nbsp;37g&nbsp;|&nbsp;Fat:&nbsp;23g&nbsp;|&nbsp;Saturated Fat:&nbsp;2g&nbsp;|&nbsp;Cholesterol:&nbsp;381mg&nbsp;|&nbsp;Sodium:&nbsp;1951mg&nbsp;|&nbsp;Potassium:&nbsp;764mg&nbsp;|&nbsp;Fiber:&nbsp;5g&nbsp;|&nbsp;Sugar:&nbsp;29g&nbsp;|&nbsp;Vitamin A:&nbsp;2193IU&nbsp;|&nbsp;Vitamin C:&nbsp;76mg&nbsp;|&nbsp;Calcium:&nbsp;297mg&nbsp;|&nbsp;Iron:&nbsp;5mg</p>', 7, 2, '2021-01-21 11:14:03', '2021-01-21 11:16:13'),
(8, 'Pork Hamonado', '<h3><strong>Pork Hamonado Recipe</strong></h3>\r\n\r\n<p><strong>Ingredients:</strong></p>\r\n\r\n<ul>\r\n	<li>2 tablespoons canola oil</li>\r\n	<li>2 pounds pork belly (boneless or bone-in), cut into 2-inch cubes</li>\r\n	<li>1 onion, peeled and chopped</li>\r\n	<li>4 cloves garlic, peeled and minced</li>\r\n	<li>1 cup pineapple juice (reserved from can of pineapples)</li>\r\n	<li>1/4 cup apple cider vinegar</li>\r\n	<li>1/2 cup soy sauce</li>\r\n	<li>1 cup water</li>\r\n	<li>1 teaspoon peppercorns</li>\r\n	<li>2 bay leaves</li>\r\n	<li>2 tablespoons brown sugar</li>\r\n	<li>salt and pepper to taste</li>\r\n	<li>1 cup pineapple chunks</li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cooking Procedure:</strong></p>\r\n\r\n<ol>\r\n	<li>In a wide, heavy-bottomed pan over medium-high heat, heat oil until very hot but not smoking.</li>\r\n	<li>Add pork belly in a single layer and cook for about 2 to 3 minutes or until lightly browned. Turn and cook for another 1 to 2 minutes or until all sides are lightly browned. Do NOT overcrowd the pan, cook in batches as needed.</li>\r\n	<li>Remove meat from the pan and drain on paper towels. Keep warm.</li>\r\n	<li>In the pan, add onions and garlic and cook, stirring regularly, until softened.</li>\r\n	<li>Add pork back to the pan and cook for about 1 minute, stirring to combine.</li>\r\n	<li>Add pineapple juice and vinegar. Bring to a boil, uncovered and without stirring, for about 4 to 5 minutes.</li>\r\n	<li>Add soy sauce and water. Stir to distribute and bring to a boil, skimming scum that floats on top.</li>\r\n	<li>Lower heat, cover, and simmer for about 50 to 60 minutes or until very tender and liquid is reduced.</li>\r\n	<li>Add brown sugar and stir to combine. Season with salt and pepper to taste. Continue to simmer until sauce is thickened.</li>\r\n	<li>Add pineapple chunks and cook for about 1 to 2 minutes or until heated through. Serve hot.</li>\r\n</ol>\r\n\r\n<p><img alt=\"\" src=\"https://www.lutongbahayrecipe.com/wp-content/uploads/2019/02/lutong-bahay-recipe-pork-hamonado-3.png\" style=\"height:659px; width:781px\" /></p>', 8, 4, '2021-01-22 07:20:55', '2021-01-22 07:20:55');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `feedid` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Imagefilename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `feedid`, `state`, `Imagefilename`, `created_at`, `updated_at`) VALUES
(1, 1, 'primary', 'Chicken-Halang-halang_1611212060.jpg', '2021-01-20 22:54:20', '2021-01-20 22:54:20'),
(2, 2, 'primary', 'sizzling-sisig_1611212196.jpg', '2021-01-20 22:56:36', '2021-01-20 22:56:36'),
(3, 3, 'primary', 'how-to-make-halo-halo_1611212330.jpg', '2021-01-20 22:58:50', '2021-01-20 22:58:50'),
(4, 4, 'primary', 'php_1611228168.jpg', '2021-01-21 03:22:48', '2021-01-21 03:22:48'),
(5, 5, 'primary', 'stir-fry-beef.jpg', '2021-01-21 06:51:47', '2021-01-21 06:51:47'),
(6, 6, 'primary', 'Puto-Pao_1611256195.jpg', '2021-01-21 11:09:55', '2021-01-21 11:09:55'),
(7, 7, 'primary', 'kung-pao-shrimp_1611256443.jpg', '2021-01-21 11:14:03', '2021-01-21 11:14:03'),
(8, 8, 'primary', 'lutong-bahay-recipe-pork-hamonado-1-1200x1039_1611332825.png', '2021-01-22 07:20:56', '2021-01-22 08:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_01_20_063207_create_feeds_table', 2),
(5, '2021_01_20_115720_create_admins_table', 3),
(7, '2021_01_20_123344_create_images_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('vandupio@gmail.com', '$2y$10$i2Ww6lXHATq9T9pLZK4qf.j73n2wcaGZx6QR4Q7ANYQqh6E1Nb5IW', '2021-01-22 00:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Van Dupio', 'vandupio@gmail.com', NULL, '$2y$10$a8p9Ds5kIW3YuyIglhO91uono0x1sbAd35iMvI/6fimHC0doiymWC', NULL, '2021-01-21 10:23:16', '2021-01-21 10:23:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feeds`
--
ALTER TABLE `feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feeds`
--
ALTER TABLE `feeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
