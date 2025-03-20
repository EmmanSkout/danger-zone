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
    <title>Document</title>
</head>
<body>
    <div class="m-3">

        <div class="flex flex-wrap pb-3">
            <img class="mr-3" src="danger-icon.svg" width="22" height="22" alt="Example Image">
            <span class="text-3xl font-bold">Danger Zone App</span>
        </div>

        @template.navigation()

        <div class="container mx-auto px-4">
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
                @for(Trip trip : trips)
                    <div class="bg-white rounded-lg shadow-lg overflow-hidden">
                        <!-- Card Body -->
                        <div class="p-4">
                            <a href="/trip/${trip.getId()}" class="bg-gray-200 text-gray-800 px-4 py-2">Back to Trips</a>
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