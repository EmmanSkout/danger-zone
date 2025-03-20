@import java.util.List;
@import org.example.dangerzonejava.models.Trip;

@param Trip trip

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://cdn.jsdelivr.net/npm/@tailwindcss/browser@4"></script>
    <title>${trip.getTitle()}</title>
</head>
<body>
<div class="bg-black">

    @template.navigation()

    <div class="container mx-auto px-4">
        <div class="bg-white rounded-lg shadow-lg overflow-hidden">
            <!-- Card Body -->
            <div class="p-4">
                <!-- Title -->
                <h2 class="text-2xl font-bold text-gray-800">${trip.getTitle()}</h2>

                <!-- Clickable Image -->
                <img id="tripImage" src="${trip.getImage()}" alt="Trip Image"
                     class="w-full h-48 object-cover rounded-md mt-2 cursor-pointer">

                <!-- Description -->
                <p class="text-gray-600 mt-2">${trip.getDescription()}</p>

                <!-- Danger Score -->
                <p class="mt-4 text-lg font-semibold text-red-600">Danger Score: <span class="text-green-600">${trip.getDangerScore()}</span></p>
            </div>
        </div>
    </div>
</div>

<!-- Fullscreen Overlay -->
<div id="imageOverlay" class="fixed top-0 left-0 w-full h-full bg-black bg-opacity-75 flex items-center justify-center hidden">
    <img id="fullscreenImage" src="${trip.getImage()}" class="max-w-full max-h-full rounded-lg">
</div>

<script>
    const image = document.getElementById("tripImage");
    const overlay = document.getElementById("imageOverlay");
    const fullscreenImage = document.getElementById("fullscreenImage");

    image.addEventListener("click", () => {
        fullscreenImage.src = image.src; // Set the full image source
        overlay.classList.remove("hidden"); // Show overlay
    });

    overlay.addEventListener("click", () => {
        overlay.classList.add("hidden"); // Hide overlay on any click
    });
</script>
</body>
</html>
