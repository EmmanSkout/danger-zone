@import java.util.List;
@import org.example.dangerzonejava.models.Trip;

@param List<Trip> trips

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>Danger Zone - Extreme Trips</title>
</head>
<body>
    <div class="m-3">

        <div class="flex flex-wrap pb-3">
            <img class="mr-3" src="danger-icon.svg" width="22" height="22" alt="Example Image">
            <span class="text-3xl font-bold">Danger Zone - Extreme Trips</span>
        </div>

        <!-- Navigation Bar -->
        @template.navigation()

        <div class="flex items-center justify-center min-h-screen">
            <div class="text-center bg-black fade-in max-w-lg p-6 border border-red-600 rounded-lg shadow-lg">
                <img src="https://cdn.vectorstock.com/i/1000v/19/21/danger-zone-grunge-background-vector-11861921.jpg"
                     alt="Danger Zone"
                     class="w-full rounded-lg mb-4">
                <h1 class="text-3xl font-bold text-red-500 mb-2">
                    Welcome to the Danger Zone
                </h1>
                <p class="text-gray-300 mb-4">
                    Welcome to <b>Danger Zone</b>, the ultimate destination for thrill-seekers.
                    Here, you can book <b>the most extreme, heart-pounding, and dangerous trips</b>—adventures so intense that <b>your life is on the line</b>.
                    Whether it's skydiving into active volcanoes, cave diving into the abyss, or cycling Bolivia’s Death Road,
                    this is where the <b>fearless</b> come to play.
                </p>
            </div>
        </div>
    </div>

</body>
</html>