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
    <div class="bg-black">

        @template.navigation()

        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                @for(Trip trip : trips)
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden"
                         onclick="location.href='/trip/${trip.getId()}';"
                         style="cursor: pointer;"
                    >
                        <!-- Card Body -->
                        <div class="p-4">
                            <!-- Title -->
                            <h2 class="text-2xl font-bold text-gray-800">${trip.getTitle()}</h2>

                            <img src="${trip.getImage()}" alt="Trip Image" class="w-full h-48 object-cover rounded-md mt-2">

                            <!-- Description -->
                            <p class="text-gray-600 mt-2">${trip.getDescription()}</p>

                            <!-- Danger Score -->
                            <p class="mt-4 text-lg font-semibold text-red-600">Danger Score: <span class="text-green-600">${trip.getDangerScore()}</span></p>
                        </div>
                    </div>
                @endfor
            </div>
        </div>
    </div>
</body>
</html>